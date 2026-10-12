<script lang="ts">
	import './layout.css';
	import favicon from '$lib/assets/favicon.png';
	import { goto } from '$app/navigation';

	let { children } = $props();

	let links = $state([
		{
			title: 'home'
		},
		{
			title: 'about'
		},
		{
			title: 'blog',
			url: '/blog'
		},
		{
			title: 'resources',
			url: '/resources'
		}
	]);
</script>

<svelte:head><link rel="icon" href={favicon} /></svelte:head>

<div class="fixed top-0 right-0 left-0 border-b border-secondary bg-background/50 backdrop-blur-md">
	<div class="flex justify-between bg-secondary/20">
		<div class="flex flex-row items-center p-2 px-4">
			<img alt="PioNerds Logo" src={favicon} class="h-12 w-12" />
			<span class="p-3 text-4xl text-text" style="font-family: 'Space Mono';"> PioNerds </span>
		</div>
		<div class="mr-2 flex flex-row items-center">
			{#each links as link}
				<button
					style="font-family: 'Space Mono';"
					class="m-1 rounded-md p-2 px-3 text-lg text-text transition-all hover:underline"
					onclick={() => goto(link.url || '/')}
				>
					{link.title}
				</button>
			{/each}
		</div>
	</div>
</div>
<div class="">
	{@render children()}
</div>
