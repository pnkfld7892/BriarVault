<script lang="ts">
	import { toggleMode } from 'mode-watcher';
	import BriarVaultLogo from './svg/BriarVaultLogo.svelte';
	import Github from './svg/Github.svelte';
    import Sun from './svg/Sun.svelte'
    import Moon from './svg/Moon.svelte'
	let klass: string = '';
	export { klass as class };
</script>

<nav class="{klass} mx-auto flex h-24 items-center justify-between px-4">
	<a href="/"> <BriarVaultLogo class="h-24 w-24 rounded-4xl"></BriarVaultLogo></a>
	<div class="float-end flex">
		<a href="https://github.com/pnkfld7892/BriarVault" target="_blank"
			><Github class="fill-gray-900 dark:fill-gray-100 h-12 w-12"></Github></a
		>
        <button on:click={toggleMode}><Sun class="h-12 w-12 fill-gray-900 dark:fill-gray-100"></Sun> </button>
	</div>
</nav>
