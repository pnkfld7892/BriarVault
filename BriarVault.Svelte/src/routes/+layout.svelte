<script lang="ts">
	import '../app.css';
	import Nav from '../lib/components/Nav.svelte';

	let { children } = $props();
</script>

<header class="fixed inset-x-0 top-0 z-0 border-b">
	<Nav></Nav>
</header>
<main>
	<slot />
</main>
