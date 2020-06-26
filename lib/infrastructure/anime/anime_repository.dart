import 'dart:convert';
import 'dart:io';
import 'package:anime_search/domain/anime/anime.dart';
import 'package:anime_search/domain/anime/anime_failure.dart';
import 'package:anime_search/domain/anime/i_anime_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IAnimeRepository)
class AnimeRepository implements IAnimeRepository {
  @override
  Future<Either<AnimeFailure, KtList<Anime>>> fetchAnime(
      String animeTitle) async {
    try {
      final response = await http
          .get('https://api.jikan.moe/v3/search/anime?q=$animeTitle&page=1');
      final decodedJson = jsonDecode(response.body)['results'];

      final animeList =
          KtList.from(decodedJson).map((data) => Anime.fromJson(data));

      return right(animeList);
    } on SocketException catch (_) {
      return left(const AnimeFailure.unexpected());
    }
  }

  @override
  Future<Either<AnimeFailure, Anime>> fetchAnimeDetails() {
    // TODO: implement fetchAnimeDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<AnimeFailure, KtList<Anime>>> fetchMostPopularAnimes() {
    // TODO: implement fetchMostPopularAnimes
    throw UnimplementedError();
  }
}
