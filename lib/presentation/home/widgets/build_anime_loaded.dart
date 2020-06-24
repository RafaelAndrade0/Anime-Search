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
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Flexible(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    for (var anime in widget.animeList.iter)
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 160,
                            width: 160,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(anime.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 27.0,
                                  // spreadRadius: 15, // soften the shadow
                                  offset: const Offset(
                                    0.0, // Move to right 10  horizontally
                                    15.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
