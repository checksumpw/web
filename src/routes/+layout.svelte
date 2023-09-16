<script>
	import '../app.css';
	import Nav from '$lib/Nav.svelte';
</script>

<Nav />

<div class="mx-auto w-screen h-screen text-white p-4">
	<slot />
</div>
