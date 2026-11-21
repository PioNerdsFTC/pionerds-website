<script lang="ts">
	import hmLogo from '#lib/assets/hm-logo.webp';
	import favicon from '#lib/assets/favicon.png';
	import teamTemp from '#lib/assets/team-temp.webp';
	import { goto } from '$app/navigation';
</script>

<div class="h-screen min-h-screen min-w-screen text-text" style="font-family: 'Fira Mono';">
	<main class="flex flex-col">
		<div class="flex min-h-screen w-screen flex-col justify-between bg-secondary/20 md:flex-row">
			<div class="flex w-max grow flex-col items-center justify-center p-4 md:mb-[10vh]">
				<div
					class="flex max-w-[90vw] items-center font-bold justify-center p-4 text-text text-5xl md:mt-0 md:max-w-[50vw]"
				>
					Hill-Murray PioNerds
				</div>
				<p class="max-w-[90vw] p-4 text-2xl text-secondary/90 md:max-w-[40vw] text-secondary/90">
					We inspire students to become leaders
				</p>
			</div>
			<div class="flex w-max flex-col items-start p-2 md:mt-[10vh]">
				<img src={teamTemp} class="m-3 max-w-[90vw] md:max-w-[40vw]" alt="PioNerds in 2025" />
				<span class="ml-4">The PioNerds during the 2025 season!</span>
			</div>
		</div>

		<div
			class="flex max-h-screen w-screen flex-col border-t border-secondary bg-secondary/5 p-4 pt-[10vh] pb-[10vh]"
		>
			<div
				class="flex flex-col p-4 text-text sm:max-w-full sm:justify-center md:max-w-[40vw] md:justify-start"
			>
				<h1 class="text-3xl">About us</h1>
				<div class="flex w-[90vw] flex-row justify-between">
					<p class="max-w-[40vw] pt-4 text-2xl">
						The PioNerds is a team of dedicated students who strive to embody the core values of
						FIRST. We collaborate to establish problem solving skills and the fundamentals of STEM
						learning as well as strengthen relationships between members of the team and the
						community. The students generate a positive, respectful, and comprehensive working
						environment. Together we thrive to become the next generation of leaders who create
						undeniable change in their future career fields.
					</p>
					<img alt="Image" />
				</div>
			</div>
		</div>
	</main>
	<footer
		class="flex min-h-[30vh] w-screen flex-col gap-4 border-t border-secondary bg-primary/30 p-4"
	>
		<span class="mb-4 text-4xl">Connect with us!</span>
		<div class="flex flex-row">
			<div class="flex flex-col gap-2">
			<span class="mb-2 text-lg">Outreach</span>
				<a class="underline underline-offset-2" target="_blank" rel="noopener noreferrer">
					Youtube
				</a>
				<a class="underline underline-offset-2" target="_blank" rel="noopener noreferrer">
					Facebook
				</a>
				<a class="underline underline-offset-2" target="_blank" rel="noopener noreferrer">
					X
				</a>
			</div>

			<div class="flex flex-col gap-2 pl-[5vw]">
			<span class="mb-2 text-lg">Development</span>
				<a
					class="underline underline-offset-2"
					href="https://github.com/PioNerdsFTC"
					target="_blank"
					rel="noopener noreferrer"
				>
					Github
				</a>
			</div>
		</div>
	</footer>
</div>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Fira+Mono:wght@400;500;700&family=Google+Sans:ital,opsz,wght@0,17..18,400..700;1,17..18,400..700&family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap');
</style>
