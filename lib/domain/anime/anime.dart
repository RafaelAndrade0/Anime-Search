import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

@freezed
abstract class Anime with _$Anime {
  const factory Anime({
    final String title,
    final String synopsis,
    @JsonKey(name: 'image_url') final String imageUrl,
    final int episodes,
    final double score,
    final String type,
    final bool airing,
  }) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
}
