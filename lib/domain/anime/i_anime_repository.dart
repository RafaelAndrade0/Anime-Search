import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/domain/anime/anime_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IAnimeRepository {
  Future<Either<AnimeFailure, KtList<Anime>>> fetchAnime(String animeTitle);
  Future<Either<AnimeFailure, Anime>> fetchAnimeDetails();
  Future<Either<AnimeFailure, KtList<Anime>>> fetchMostPopularAnimes();
}
