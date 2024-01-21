<script>
	import Fa from 'svelte-fa';
	import { faFilm } from '@fortawesome/free-solid-svg-icons';
</script>

<div class="container mx-auto flex flex-col items-center">
	<h1 class="my-6 text-3xl font-bold text-slate-200">Welcome to BenFlex</h1>

	<article
		class="mx-auto max-w-sm transform cursor-pointer rounded-md bg-black/15 shadow-md backdrop-blur-sm duration-300 hover:-translate-y-1 hover:shadow-xl"
	>
		<div class="max-h-140 overflow-hidden">
			<img
				class="h-auto w-full"
				src="https://images.squarespace-cdn.com/content/v1/58dd442dbebafb88160c6929/1593716780236-POZ4F9TRGHIMKVVZRK7U/ke17ZwdGBToddI8pDm48kPvdHwxe8vxmYnjZvCzAU61Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwxsJYjeBOStWfhZBaQGTlDOVYbSZjX976lCUHHLPdHUlrmON35exl807wLzw9VMGw/visitshire.jpg?format=800w"
				alt=""
			/>
		</div>
		<div class="my-auto p-7 pb-12">
			<div class="flex items-center text-2xl font-semibold text-slate-200">
				<Fa icon={faFilm} />
				<h1 class="pl-1">Plex</h1>
			</div>
			<p class="mt-5 text-xl font-light leading-relaxed text-gray-400">For all your media needs</p>
		</div>
	</article>
</div>
