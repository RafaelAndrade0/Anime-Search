import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'anime_event.dart';
part 'anime_state.dart';

part 'anime_bloc.freezed.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  @override
  AnimeState get initialState => const AnimeState.animeInitial();

  @override
  Stream<AnimeState> mapEventToState(
    AnimeEvent event,
  ) async* {
    yield* event.map(
      getMostPopularAnimes: (e) async* {},
      getAnime: (e) async* {},
      getAnimeDetais: (e) async* {},
    );
  }
}
