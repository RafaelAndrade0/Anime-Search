import 'package:anime_search/domain/anime/anime.dart';
import 'package:flutter/material.dart';

class AnimeDetailsHeader extends StatefulWidget {
  final Size size;
  final Anime anime;

  const AnimeDetailsHeader({
    Key key,
    @required this.size,
    @required this.anime,
  }) : super(key: key);

  @override
  _AnimeDetailsHeaderState createState() => _AnimeDetailsHeaderState();
}

class _AnimeDetailsHeaderState extends State<AnimeDetailsHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: widget.size.height * 0.4 - 50,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(50)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                widget.anime.imageUrl,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Container(
            height: 90,
            width: widget.size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 50,
                  color: Colors.white.withOpacity(0.6),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.tv,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        widget.anime.type,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          widget.anime.episodes.toString(),
                          // widget.anime.score.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Text(
                        'Episodes',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),

                  // Column(
                  //   children: <Widget>[
                  //     Icon(
                  //       Icons.tv,
                  //       size: 30,
                  //       color: Colors.black,
                  //     ),
                  //     Text('Airing')
                  //   ],
                  // ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          widget.anime.score.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Text(
                        'Score',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[500],
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
