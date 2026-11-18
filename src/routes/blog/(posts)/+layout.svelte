<script lang="ts">
	const { children } = $props();
</script>

<div
	class="flex h-screen w-screen flex-col bg-secondary/20 p-4 text-text"
	style="font-family: 'Fira Mono';"
>
	<div class="flex justify-center p-4">
		<div class="w-[60vw] bg-secondary/10 p-4">
			{@render children?.()}
		</div>
	</div>
</div>

<style>
	:global(h1) {
		font-size: var(--text-4xl);
	}

	:global(h2) {
		font-size: var(--text-3xl);
	}
</style>
