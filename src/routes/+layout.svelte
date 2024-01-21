<script>
	import '../app.css';
</script>

<div class="flex h-screen flex-col">
	<header class="bg-blue-950 py-4 text-white">
		<div class="container mx-auto flex items-center justify-between px-4">
			<h1 class="text-2xl">BenFlex</h1>
			<nav>
				<a href="/" class="px-1 text-xl text-white hover:text-gray-300">Home</a>
				<a href="/apps" class="px-1 text-xl text-white hover:text-gray-300">Apps</a>
			</nav>
		</div>
	</header>

	<div class="flex flex-grow bg-gradient-to-tr from-purple-900 to-blue-900">
		<slot />
	</div>
</div>
