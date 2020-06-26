import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/presentation/home/widgets/build_anime_initial.dart';
import 'package:anime_search/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
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
        buildBackground(),
      ],
    );
  }

  Widget buildAnimeItem(Anime anime) {
    return GestureDetector(
        onTap: () => ExtendedNavigator.of(context).pushNamed(
              Routes.animeDetails,
              arguments: AnimeDetailsArguments(anime: anime),
            ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            Container(
              height: 170,
              width: 170,
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
                    offset: const Offset(
                      0.0,
                      15.0,
                    ),
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            )
          ],
        ));
  }

  Expanded buildBackground() {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          if (widget.animeList.isEmpty())
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Oooops!',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/no_results.gif',
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'There were no results...try again!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            )
          else
            GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                for (var anime in widget.animeList.iter) buildAnimeItem(anime),
              ],
            )
        ],
      ),
    );
  }
}
