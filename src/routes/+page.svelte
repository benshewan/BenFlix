<script>
	import Fa from 'svelte-fa';
	import { faFilm, faUserNinja } from '@fortawesome/free-solid-svg-icons';
</script>

<div class="container mx-auto flex flex-col items-center">
	<h1 class="my-6 text-3xl font-bold text-slate-200">Entertainment <i>Illegally</i></h1>
	<div class="flex items-center justify-center gap-3">
		<article
			class="mx-auto max-w-sm transform cursor-pointer rounded-md bg-black/15 shadow-md backdrop-blur-sm duration-300 hover:-translate-y-1 hover:shadow-xl"
		>
			<div class="my-auto p-7 pb-12">
				<div class="flex items-center justify-center text-2xl font-semibold text-slate-200">
					<Fa icon={faFilm} size="lg" />
					<h1 class="pl-1">Plex</h1>
				</div>
				<p class="mt-5 text-xl font-light leading-relaxed text-gray-400">
					For all your media needs
				</p>
			</div>
		</article>
		<a href="https://jeremybankes.com">
			<article
				class="mx-auto max-w-sm transform cursor-pointer rounded-md bg-black/15 shadow-md backdrop-blur-sm duration-300 hover:-translate-y-1 hover:shadow-xl"
			>
				<div class="my-auto p-7 pb-12">
					<div class="flex items-center justify-center text-2xl font-semibold text-slate-200">
						<Fa icon={faUserNinja} size="lg" />
						<h1 class="pl-1">Jeremy</h1>
					</div>
					<p class="mt-5 text-xl font-light leading-relaxed text-gray-400">
						Where you <i>actually</i> want to be.
					</p>
				</div>
			</article>
		</a>
	</div>
</div>
