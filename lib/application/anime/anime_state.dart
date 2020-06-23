part of 'anime_bloc.dart';

@freezed
abstract class AnimeState with _$AnimeState {
  const factory AnimeState.animeLoading() = AnimeLoading;
  const factory AnimeState.animeLoaded(KtList<Anime> animeList) = AnimeLoaded;
  const factory AnimeState.animeError() = AnimeError;
  const factory AnimeState.animeInitial() = AnimeInitial;
}
