import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_initial.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class BuildAnimeLoaded extends StatefulWidget {
  final KtList<Anime> animeList;
  const BuildAnimeLoaded({this.animeList});

  @override
  _BuildAnimeLoadedState createState() => _BuildAnimeLoadedState();
}

class _BuildAnimeLoadedState extends State<BuildAnimeLoaded> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BuildAnimeInitial(),
        Flexible(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              for (var anime in widget.animeList.iter) Text(anime.title)
            ],
          ),
        )
      ],
    );
  }
}
