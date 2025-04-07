<script lang="ts">
	import Nav from '$lib/components/Nav.svelte';
	import '../app.css';

	let { children } = $props();
</script>

<svelte:window />

<main class="max-w-5xl mx-auto">
    <Nav class="border-b border-b-gray-200"/>
	{@render children()}
</main>
