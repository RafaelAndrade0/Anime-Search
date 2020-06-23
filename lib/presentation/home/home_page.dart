import 'package:anime_search/application/anime/anime_bloc.dart';
import 'package:anime_search/application/auth/auth_bloc.dart';
import 'package:anime_search/infrastructure/anime/anime_repository.dart';
import 'package:anime_search/injection.dart';
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
                animeLoading: (e) => const Text('ANIME LOADING.........'),
                animeLoaded: (e) => const Text('Anime Loaded'),
                animeError: (e) => const Text('Anime Error'),
                animeInitial: (e) {
                  return MaterialButton(
                    color: Colors.deepPurple,
                    onPressed: () {
                      context.bloc<AnimeBloc>().add(
                            const AnimeEvent.getAnime(
                              'naruto',
                            ),
                          );
                    },
                    child: const Text('GET ANIME'),
                  );
                });
          }),
        ));
  }
}
