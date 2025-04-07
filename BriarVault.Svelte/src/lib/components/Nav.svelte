<script lang="ts">
	import BriarVaultLogo from './svg/BriarVaultLogo.svelte';
	import Github from './svg/Github.svelte';
	let klass: string = '';
	export { klass as class };
</script>

<nav class="{klass} mx-auto flex h-24 items-center justify-between px-4">
	<a href="/"> <BriarVaultLogo class="h-24 w-24 rounded-4xl"></BriarVaultLogo></a>
	<div class="float-end">
		<a href="https://github.com/pnkfld7892/BriarVault" target="_blank"
			><Github class="fill-gray-500 h-12 w-12"></Github></a
		>
	</div>
</nav>
