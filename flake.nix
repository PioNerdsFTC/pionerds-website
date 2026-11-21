{
  description = "Pionerds Website";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    bun2nix.url = "github:nix-community/bun2nix";
    bun2nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      bun2nix,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ bun2nix.overlays.default ];
      };
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "pionerds-website";
        version = "v0.0.1";
        src = ./.;

        nativeBuildInputs = with pkgs; [
          bun
          pkgs.bun2nix.hook
        ];

        bunDeps = pkgs.bun2nix.fetchBunDeps {
          bunNix = ./bun.nix;
        };

        # Honestly, don't care about making the flake more modular
        buildPhase = ''
          DOMAIN="pionerdsrobotics.com,www.pionerdsrobotics.com," bun run build \
            --minify
        '';

        installPhase = ''
          mkdir -p $out/build

          cp -R ./build $out


          mkdir -p $out/bin/

          cat > $out/bin/run-site <<EOF
          #!/usr/bin/env bash
          exec ${pkgs.bun}/bin/bun run $out/build/index.js
          EOF

          chmod +x $out/bin/run-site
        '';
      };

      nixosModules.default =
        {
          config,
          lib,
          pkgs,
          ...
        }:
        let
          cfg = config.services.pionerds-website;
          user = "pionerds-website";
          group = "pionerds-website";
          stateDir = "/var/lib/pionerds-website";
        in
        {
          options.services.pionerds-website = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
            };

            package = lib.mkOption {
              type = lib.types.package;
              default = self.packages.${pkgs.system}.default;
            };
            port = lib.mkOption {
              type = lib.types.number;
              default = 3000;
            };

            openFirewall = lib.mkOption {
              type = lib.types.bool;
              default = false;
            };
          };
          config = lib.mkIf cfg.enable {
            users.users.${user} = {
              isSystemUser = true;
              group = group;
              createHome = true;
              home = stateDir;
            };

            users.groups.${group} = { };

            systemd.services.pionerds-website = {
              description = "PioNerds Website";
              after = [ "network-online.target" ];
              wants = [ "network-online.target" ];
              wantedBy = [ "multi-user.target" ];

              serviceConfig = {
                User = user;
                Group = group;
                WorkingDirectory = stateDir;
                ExecStart = "${cfg.package}/bin/run-site";
                Restart = "on-failure";
                RestartSec = 5;
              };

              environment = lib.filterAttrs (_: v: v != "") {
                PORT = toString cfg.port;
              };
            };

            networking.firewall.allowedTCPPorts = lib.mkIf cfg.openFirewall [ cfg.port ];
          };
        };
    };

}
