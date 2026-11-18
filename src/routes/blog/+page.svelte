<script lang="ts">
	import { goto } from '$app/navigation';

	type Blog = {
		title: string;
		description: string;
		page: string;
	};

	const blogs: Blog[] = $state([
		{
			title: 'Hello, World!',
			description: 'Interviews with the 2025-2026 team',
			page: 'hello-world'
		},

		{
			title: 'Hello, World!',
			description: 'Interviews with the 2025-2026 team',
			page: 'hello-world'
		}
	]);
</script>

<div class="flex h-screen w-screen flex-col bg-secondary/20 p-4" style="font-family: 'Fira Mono';">
	<div class="p-8">
		<h1 class="text-3xl text-text">PioNerds Blog</h1>
	</div>

	<div class="mt-[20vh] flex h-full flex-col items-center gap-8">
		{#each blogs as blog}
			<button
				onclick={() => goto(`/blog/${blog.page}`)}
				class="flex w-[40vw] cursor-pointer flex-col items-start border border-secondary p-4 text-text hover:scale-101"
			>
				<h1 class="text-2xl">{blog.title}</h1>
				<span class="text-text/80">{blog.description}</span>
			</button>
		{/each}
	</div>
</div>
