<script>
	import '../app.css';
	import Header from '../components/Header.svelte';
</script>

<div class="flex h-screen flex-col">
	<header class="bg-black py-4 text-white">
		<div class="container mx-auto flex items-center justify-center px-4">
			<div class="flex flex-col items-center">
				<Header />
				<nav>
					<a href="/" class="px-1 text-xl text-white hover:text-gray-300">Home</a>
					<a href="/applications" class="px-1 text-xl text-white hover:text-gray-300"
						>Applications</a
					>
				</nav>
			</div>
		</div>
	</header>

	<div class="flex flex-grow bg-gradient-to-b from-gray-800 to-black">
		<slot />
	</div>
</div>
