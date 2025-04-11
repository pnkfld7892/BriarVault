<script lang="ts">
	import Nav from '$lib/components/Nav.svelte';
	import '../app.css';
    import {ModeWatcher} from "mode-watcher";

	let { children } = $props();
</script>

<svelte:window />
<ModeWatcher />
<main class="max-w-5xl mx-auto">
    <Nav class="border-b border-b-black dark:border-b-gray-200"/>
	{@render children()}
</main>
