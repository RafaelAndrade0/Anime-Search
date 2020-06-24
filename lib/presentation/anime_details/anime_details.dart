import 'package:flutter/material.dart';

class AnimeDetails extends StatelessWidget {
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
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.4 - 50,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://viciados.net/wp-content/uploads/2020/05/Attack-on-Titan-temporada-3-Shingeki-no-Kyojin-temporada-3-1000x600.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    height: 90,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                      // border: Border.all(width: 3),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 50,
                          color: Colors.white.withOpacity(0.6),
                          // color: const Color(0xFF12153D).withOpacity(0.2),
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
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              Text('Airing')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                              Text('Airing')
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.tv,
                                size: 30,
                                color: Colors.blueGrey,
                              ),
                              Text('Airing')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SafeArea(
                    child: BackButton(
                  color: Colors.white,
                ))
              ],
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
                  'Shingeki no Kyojin',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple[200],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Attack on Titan (Japanese: 進撃の巨人, Hepburn: Shingeki no Kyojin, lit. "The Attack Giant") is a Japanese manga series written and illustrated by Hajime Isayama. It is set in a fantasy world where humanity lives within territories surrounded by three enormous walls that protect them from gigantic man-eating humanoids referred to as Titans.',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
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
