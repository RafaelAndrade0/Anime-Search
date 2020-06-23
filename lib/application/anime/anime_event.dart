part of 'anime_bloc.dart';

@freezed
abstract class AnimeEvent with _$AnimeEvent {
  const factory AnimeEvent.getMostPopularAnimes() = GetMostPopularAnimes;
  const factory AnimeEvent.getAnime() = GetAnime;
  const factory AnimeEvent.getAnimeDetais() = GetAnimeDetails;
}
