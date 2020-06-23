import 'package:anime_search/application/anime/anime_bloc.dart';
import 'package:anime_search/injection.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_initial.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_loaded.dart';
import 'package:anime_search/presentation/loader/loader.dart';
import 'package:anime_search/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Anime Search'),
      // ),
      appBar: GradientAppBar(
        title: 'Anime Search',
        gradientBegin: Colors.deepPurple,
        gradientEnd: Colors.purple,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
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
