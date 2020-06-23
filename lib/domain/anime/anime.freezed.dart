// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return _Anime.fromJson(json);
}

class _$AnimeTearOff {
  const _$AnimeTearOff();

  _Anime call(
      {String title,
      String synopsis,
      @JsonKey(name: 'image_url') String imageUrl,
      int episodes,
      double score,
      String type,
      bool airing}) {
    return _Anime(
      title: title,
      synopsis: synopsis,
      imageUrl: imageUrl,
      episodes: episodes,
      score: score,
      type: type,
      airing: airing,
    );
  }
}

// ignore: unused_element
const $Anime = _$AnimeTearOff();

mixin _$Anime {
  String get title;
  String get synopsis;
  @JsonKey(name: 'image_url')
  String get imageUrl;
  int get episodes;
  double get score;
  String get type;
  bool get airing;

  Map<String, dynamic> toJson();
  $AnimeCopyWith<Anime> get copyWith;
}

abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String synopsis,
      @JsonKey(name: 'image_url') String imageUrl,
      int episodes,
      double score,
      String type,
      bool airing});
}

class _$AnimeCopyWithImpl<$Res> implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  final Anime _value;
  // ignore: unused_field
  final $Res Function(Anime) _then;

  @override
  $Res call({
    Object title = freezed,
    Object synopsis = freezed,
    Object imageUrl = freezed,
    Object episodes = freezed,
    Object score = freezed,
    Object type = freezed,
    Object airing = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      synopsis: synopsis == freezed ? _value.synopsis : synopsis as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      episodes: episodes == freezed ? _value.episodes : episodes as int,
      score: score == freezed ? _value.score : score as double,
      type: type == freezed ? _value.type : type as String,
      airing: airing == freezed ? _value.airing : airing as bool,
    ));
  }
}

abstract class _$AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$AnimeCopyWith(_Anime value, $Res Function(_Anime) then) =
      __$AnimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String synopsis,
      @JsonKey(name: 'image_url') String imageUrl,
      int episodes,
      double score,
      String type,
      bool airing});
}

class __$AnimeCopyWithImpl<$Res> extends _$AnimeCopyWithImpl<$Res>
    implements _$AnimeCopyWith<$Res> {
  __$AnimeCopyWithImpl(_Anime _value, $Res Function(_Anime) _then)
      : super(_value, (v) => _then(v as _Anime));

  @override
  _Anime get _value => super._value as _Anime;

  @override
  $Res call({
    Object title = freezed,
    Object synopsis = freezed,
    Object imageUrl = freezed,
    Object episodes = freezed,
    Object score = freezed,
    Object type = freezed,
    Object airing = freezed,
  }) {
    return _then(_Anime(
      title: title == freezed ? _value.title : title as String,
      synopsis: synopsis == freezed ? _value.synopsis : synopsis as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      episodes: episodes == freezed ? _value.episodes : episodes as int,
      score: score == freezed ? _value.score : score as double,
      type: type == freezed ? _value.type : type as String,
      airing: airing == freezed ? _value.airing : airing as bool,
    ));
  }
}

@JsonSerializable()
class _$_Anime implements _Anime {
  const _$_Anime(
      {this.title,
      this.synopsis,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.episodes,
      this.score,
      this.type,
      this.airing});

  factory _$_Anime.fromJson(Map<String, dynamic> json) =>
      _$_$_AnimeFromJson(json);

  @override
  final String title;
  @override
  final String synopsis;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final int episodes;
  @override
  final double score;
  @override
  final String type;
  @override
  final bool airing;

  @override
  String toString() {
    return 'Anime(title: $title, synopsis: $synopsis, imageUrl: $imageUrl, episodes: $episodes, score: $score, type: $type, airing: $airing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Anime &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.synopsis, synopsis) ||
                const DeepCollectionEquality()
                    .equals(other.synopsis, synopsis)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.airing, airing) ||
                const DeepCollectionEquality().equals(other.airing, airing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(synopsis) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(episodes) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(airing);

  @override
  _$AnimeCopyWith<_Anime> get copyWith =>
      __$AnimeCopyWithImpl<_Anime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnimeToJson(this);
  }
}

abstract class _Anime implements Anime {
  const factory _Anime(
      {String title,
      String synopsis,
      @JsonKey(name: 'image_url') String imageUrl,
      int episodes,
      double score,
      String type,
      bool airing}) = _$_Anime;

  factory _Anime.fromJson(Map<String, dynamic> json) = _$_Anime.fromJson;

  @override
  String get title;
  @override
  String get synopsis;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  int get episodes;
  @override
  double get score;
  @override
  String get type;
  @override
  bool get airing;
  @override
  _$AnimeCopyWith<_Anime> get copyWith;
}
