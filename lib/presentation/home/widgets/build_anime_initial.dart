import 'package:anime_search/application/anime/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildAnimeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeBloc, AnimeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: TextField(
            onSubmitted: (value) => context
                .bloc<AnimeBloc>()
                .add(const AnimeEvent.getAnime('bleach')),
            textInputAction: TextInputAction.search,
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
