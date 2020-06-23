import 'dart:async';

import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/domain/anime/i_anime_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'anime_event.dart';
part 'anime_state.dart';

part 'anime_bloc.freezed.dart';

@injectable
class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  final IAnimeRepository _animeRepository;

  AnimeBloc(this._animeRepository);

  @override
  AnimeState get initialState => const AnimeState.animeInitial();

  @override
  Stream<AnimeState> mapEventToState(
    AnimeEvent event,
  ) async* {
    yield* event.map(
      getMostPopularAnimes: (e) async* {},
      getAnime: (e) async* {
        yield const AnimeState.animeLoading();
        final responseAnime = await _animeRepository.fetchAnime(e.animeTitle);
        yield responseAnime.fold(
          (l) => const AnimeState.animeError(),
          (r) => AnimeState.animeLoaded(r),
        );
      },
      getAnimeDetais: (e) async* {},
    );
  }
}
