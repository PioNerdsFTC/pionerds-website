<script lang="ts">
	import hmLogo from '$lib/assets/hm-logo.webp';
	import favicon from '$lib/assets/favicon.png';
	import teamTemp from '$lib/assets/team-temp.webp';
	import { goto } from '$app/navigation';
</script>

<div
	class="h-screen min-h-screen min-w-screen bg-secondary/20 text-text"
	style="font-family: 'Fira Mono';"
>
	<main class="flex flex-col">
		<div class="flex h-screen w-screen flex-col items-center justify-between md:flex-row">
			<div class="flex w-max flex-col justify-center p-4">
				<div class="mt-[5vh] max-w-[50vw] p-4 text-3xl md:mt-0">Hill-Murray PioNerds</div>
				<div class="text-md max-w-[40vw] p-4 text-text/90">
					FIRST team from Maplewood, MN. We inspire students to become leaders in STEM by providing
					them ways to build a foundation of technical, social skills and values by solving
					engineering challenges with the mentorship of industry professionals
				</div>
			</div>
			<div>
				<img src={teamTemp} class="m-3 max-w-[40vw]" alt="PioNerds in 2025" />
				<span class="ml-4">The PioNerds in 2025</span>
			</div>
		</div>

		<div
			class="flex h-screen w-screen flex-col border-t border-secondary bg-secondary/5 p-4 pt-[10vh]"
		>
			<div class="w-min p-4 text-text">
				<h1 class="text-3xl">Resources</h1>
			</div>
		</div>
	</main>
	<footer class="flex min-h-[30vh] w-screen flex-col justify-center gap-4 bg-primary/10 p-4">
		<div class="underline underline-offset-2">Github</div>
		<div class="underline underline-offset-2">Facebook</div>
	</footer>
</div>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Fira+Mono:wght@400;500;700&family=Google+Sans:ital,opsz,wght@0,17..18,400..700;1,17..18,400..700&family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap');

	#bar::after {
		position: absolute;
		top: 0px;
		right: -20px;

		background-color: color-mix(
			in oklab,
			var(--color-secondary) 10%,
			var(--color-background)
		); /* var(--bg-secondary); */

		content: ' ';
		width: 20px;
		height: 20px;
		border-top-left-radius: var(--radius-xl);
	}

	#bar::before {
		position: absolute;
		top: 0px;
		right: -20px;

		background-color: var(--color-secondary);
		content: ' ';
		width: 20px;
		height: 20px;
	}
	/*

	*/
	/*
	#bar::after {
		background-color: #000000;
		position: absolute;
		bottom: -50px;
		right: 0px;

		content: ' ';

		width: 50px;
		height: 50px;

		border-top-right-radius: var(--radius-xl);
	}

	#bar::before {
		position: absolute;

		bottom: -10px;
		right: 0px;

		background-color: red;

		width: 10px;
		height: 10px;

		content: ' ';
	}*/
</style>
