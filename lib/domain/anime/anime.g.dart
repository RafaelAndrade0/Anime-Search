// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Anime _$_$_AnimeFromJson(Map<String, dynamic> json) {
  return _$_Anime(
    title: json['title'] as String,
    synopsis: json['synopsis'] as String,
    imageUrl: json['image_url'] as String,
    episodes: json['episodes'] as int,
    score: (json['score'] as num)?.toDouble(),
    type: json['type'] as String,
    airing: json['airing'] as bool,
  );
}

Map<String, dynamic> _$_$_AnimeToJson(_$_Anime instance) => <String, dynamic>{
      'title': instance.title,
      'synopsis': instance.synopsis,
      'image_url': instance.imageUrl,
      'episodes': instance.episodes,
      'score': instance.score,
      'type': instance.type,
      'airing': instance.airing,
    };
