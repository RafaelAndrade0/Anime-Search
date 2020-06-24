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
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text(
              'Anime',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            const Text(
              'Search',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
      // appBar: GradientAppBar(
      //   title: 'Anime Search',
      //   gradientBegin: Colors.deepPurple,
      //   gradientEnd: Colors.purple,
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: const Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
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
