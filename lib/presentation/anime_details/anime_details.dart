import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/presentation/anime_details/widgets/anime_details_header.dart';
import 'package:flutter/material.dart';

class AnimeDetails extends StatefulWidget {
  final Anime anime;

  const AnimeDetails({Key key, this.anime}) : super(key: key);

  @override
  _AnimeDetailsState createState() => _AnimeDetailsState();
}

class _AnimeDetailsState extends State<AnimeDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            child: AnimeDetailsHeader(
              size: size,
              anime: widget.anime,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Chip(
                label: const Text(
                  'Action',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.deepPurple[200],
              ),
              Chip(
                label: const Text(
                  'Adventure',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.deepPurple[200],
              ),
              Chip(
                label: const Text(
                  'Drama',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.deepPurple[200],
              ),
              Chip(
                label: const Text(
                  'Seinen',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.deepPurple[200],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.anime.title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple[200],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.anime.synopsis,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Characters',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            maxRadius: 40.0,
                            backgroundImage: NetworkImage(
                                'https://avatarfiles.alphacoders.com/222/222656.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            maxRadius: 40.0,
                            backgroundImage: NetworkImage(
                                'https://avatarfiles.alphacoders.com/110/110316.jpg'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            maxRadius: 40.0,
                            backgroundImage: NetworkImage(
                                'https://avatarfiles.alphacoders.com/232/232044.jpg'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            maxRadius: 40.0,
                            backgroundImage: NetworkImage(
                                'https://avatarfiles.alphacoders.com/220/220784.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: CircleAvatar(
                            maxRadius: 40.0,
                            backgroundImage: NetworkImage(
                                'https://avatarfiles.alphacoders.com/213/213932.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
