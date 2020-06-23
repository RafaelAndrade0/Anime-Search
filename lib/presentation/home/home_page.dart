import 'package:anime_search/application/anime/anime_bloc.dart';
import 'package:anime_search/injection.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_initial.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_loaded.dart';
import 'package:anime_search/presentation/loader/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocProvider(
        create: (context) => getIt<AnimeBloc>(),
        child: BlocBuilder<AnimeBloc, AnimeState>(builder: (context, state) {
          return state.map(
              animeLoading: (e) => Loader(),
              animeLoaded: (e) => BuildAnimeLoaded(
                    animeList: e.animeList,
                  ),
              animeError: (e) => const Text('Anime Error'),
              animeInitial: (e) => BuildAnimeInitial());
        }),
      ),
    );
  }
}
