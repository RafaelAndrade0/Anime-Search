import 'package:anime_search/application/anime/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildAnimeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeBloc, AnimeState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            onSubmitted: (value) => context
                .bloc<AnimeBloc>()
                .add(const AnimeEvent.getAnime('attack on titan')),
            textInputAction: TextInputAction.search,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: "Enter an anime",
              suffixIcon: Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
            ),
          ),
        );
      },
    );
  }
}
