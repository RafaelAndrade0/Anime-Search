// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'anime_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AnimeEventTearOff {
  const _$AnimeEventTearOff();

  GetMostPopularAnimes getMostPopularAnimes() {
    return const GetMostPopularAnimes();
  }

  GetAnime getAnime(String animeTitle) {
    return GetAnime(
      animeTitle,
    );
  }

  GetAnimeDetails getAnimeDetais() {
    return const GetAnimeDetails();
  }
}

// ignore: unused_element
const $AnimeEvent = _$AnimeEventTearOff();

mixin _$AnimeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMostPopularAnimes(),
    @required Result getAnime(String animeTitle),
    @required Result getAnimeDetais(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMostPopularAnimes(),
    Result getAnime(String animeTitle),
    Result getAnimeDetais(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMostPopularAnimes(GetMostPopularAnimes value),
    @required Result getAnime(GetAnime value),
    @required Result getAnimeDetais(GetAnimeDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMostPopularAnimes(GetMostPopularAnimes value),
    Result getAnime(GetAnime value),
    Result getAnimeDetais(GetAnimeDetails value),
    @required Result orElse(),
  });
}

abstract class $AnimeEventCopyWith<$Res> {
  factory $AnimeEventCopyWith(
          AnimeEvent value, $Res Function(AnimeEvent) then) =
      _$AnimeEventCopyWithImpl<$Res>;
}

class _$AnimeEventCopyWithImpl<$Res> implements $AnimeEventCopyWith<$Res> {
  _$AnimeEventCopyWithImpl(this._value, this._then);

  final AnimeEvent _value;
  // ignore: unused_field
  final $Res Function(AnimeEvent) _then;
}

abstract class $GetMostPopularAnimesCopyWith<$Res> {
  factory $GetMostPopularAnimesCopyWith(GetMostPopularAnimes value,
          $Res Function(GetMostPopularAnimes) then) =
      _$GetMostPopularAnimesCopyWithImpl<$Res>;
}

class _$GetMostPopularAnimesCopyWithImpl<$Res>
    extends _$AnimeEventCopyWithImpl<$Res>
    implements $GetMostPopularAnimesCopyWith<$Res> {
  _$GetMostPopularAnimesCopyWithImpl(
      GetMostPopularAnimes _value, $Res Function(GetMostPopularAnimes) _then)
      : super(_value, (v) => _then(v as GetMostPopularAnimes));

  @override
  GetMostPopularAnimes get _value => super._value as GetMostPopularAnimes;
}

class _$GetMostPopularAnimes implements GetMostPopularAnimes {
  const _$GetMostPopularAnimes();

  @override
  String toString() {
    return 'AnimeEvent.getMostPopularAnimes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMostPopularAnimes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMostPopularAnimes(),
    @required Result getAnime(String animeTitle),
    @required Result getAnimeDetais(),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getMostPopularAnimes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMostPopularAnimes(),
    Result getAnime(String animeTitle),
    Result getAnimeDetais(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMostPopularAnimes != null) {
      return getMostPopularAnimes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMostPopularAnimes(GetMostPopularAnimes value),
    @required Result getAnime(GetAnime value),
    @required Result getAnimeDetais(GetAnimeDetails value),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getMostPopularAnimes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMostPopularAnimes(GetMostPopularAnimes value),
    Result getAnime(GetAnime value),
    Result getAnimeDetais(GetAnimeDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMostPopularAnimes != null) {
      return getMostPopularAnimes(this);
    }
    return orElse();
  }
}

abstract class GetMostPopularAnimes implements AnimeEvent {
  const factory GetMostPopularAnimes() = _$GetMostPopularAnimes;
}

abstract class $GetAnimeCopyWith<$Res> {
  factory $GetAnimeCopyWith(GetAnime value, $Res Function(GetAnime) then) =
      _$GetAnimeCopyWithImpl<$Res>;
  $Res call({String animeTitle});
}

class _$GetAnimeCopyWithImpl<$Res> extends _$AnimeEventCopyWithImpl<$Res>
    implements $GetAnimeCopyWith<$Res> {
  _$GetAnimeCopyWithImpl(GetAnime _value, $Res Function(GetAnime) _then)
      : super(_value, (v) => _then(v as GetAnime));

  @override
  GetAnime get _value => super._value as GetAnime;

  @override
  $Res call({
    Object animeTitle = freezed,
  }) {
    return _then(GetAnime(
      animeTitle == freezed ? _value.animeTitle : animeTitle as String,
    ));
  }
}

class _$GetAnime implements GetAnime {
  const _$GetAnime(this.animeTitle) : assert(animeTitle != null);

  @override
  final String animeTitle;

  @override
  String toString() {
    return 'AnimeEvent.getAnime(animeTitle: $animeTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAnime &&
            (identical(other.animeTitle, animeTitle) ||
                const DeepCollectionEquality()
                    .equals(other.animeTitle, animeTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(animeTitle);

  @override
  $GetAnimeCopyWith<GetAnime> get copyWith =>
      _$GetAnimeCopyWithImpl<GetAnime>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMostPopularAnimes(),
    @required Result getAnime(String animeTitle),
    @required Result getAnimeDetais(),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getAnime(animeTitle);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMostPopularAnimes(),
    Result getAnime(String animeTitle),
    Result getAnimeDetais(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAnime != null) {
      return getAnime(animeTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMostPopularAnimes(GetMostPopularAnimes value),
    @required Result getAnime(GetAnime value),
    @required Result getAnimeDetais(GetAnimeDetails value),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getAnime(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMostPopularAnimes(GetMostPopularAnimes value),
    Result getAnime(GetAnime value),
    Result getAnimeDetais(GetAnimeDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAnime != null) {
      return getAnime(this);
    }
    return orElse();
  }
}

abstract class GetAnime implements AnimeEvent {
  const factory GetAnime(String animeTitle) = _$GetAnime;

  String get animeTitle;
  $GetAnimeCopyWith<GetAnime> get copyWith;
}

abstract class $GetAnimeDetailsCopyWith<$Res> {
  factory $GetAnimeDetailsCopyWith(
          GetAnimeDetails value, $Res Function(GetAnimeDetails) then) =
      _$GetAnimeDetailsCopyWithImpl<$Res>;
}

class _$GetAnimeDetailsCopyWithImpl<$Res> extends _$AnimeEventCopyWithImpl<$Res>
    implements $GetAnimeDetailsCopyWith<$Res> {
  _$GetAnimeDetailsCopyWithImpl(
      GetAnimeDetails _value, $Res Function(GetAnimeDetails) _then)
      : super(_value, (v) => _then(v as GetAnimeDetails));

  @override
  GetAnimeDetails get _value => super._value as GetAnimeDetails;
}

class _$GetAnimeDetails implements GetAnimeDetails {
  const _$GetAnimeDetails();

  @override
  String toString() {
    return 'AnimeEvent.getAnimeDetais()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAnimeDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMostPopularAnimes(),
    @required Result getAnime(String animeTitle),
    @required Result getAnimeDetais(),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getAnimeDetais();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMostPopularAnimes(),
    Result getAnime(String animeTitle),
    Result getAnimeDetais(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAnimeDetais != null) {
      return getAnimeDetais();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMostPopularAnimes(GetMostPopularAnimes value),
    @required Result getAnime(GetAnime value),
    @required Result getAnimeDetais(GetAnimeDetails value),
  }) {
    assert(getMostPopularAnimes != null);
    assert(getAnime != null);
    assert(getAnimeDetais != null);
    return getAnimeDetais(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMostPopularAnimes(GetMostPopularAnimes value),
    Result getAnime(GetAnime value),
    Result getAnimeDetais(GetAnimeDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAnimeDetais != null) {
      return getAnimeDetais(this);
    }
    return orElse();
  }
}

abstract class GetAnimeDetails implements AnimeEvent {
  const factory GetAnimeDetails() = _$GetAnimeDetails;
}

class _$AnimeStateTearOff {
  const _$AnimeStateTearOff();

  AnimeLoading animeLoading() {
    return const AnimeLoading();
  }

  AnimeLoaded animeLoaded(KtList<Anime> animeList) {
    return AnimeLoaded(
      animeList,
    );
  }

  AnimeError animeError() {
    return const AnimeError();
  }

  AnimeInitial animeInitial() {
    return const AnimeInitial();
  }
}

// ignore: unused_element
const $AnimeState = _$AnimeStateTearOff();

mixin _$AnimeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result animeLoading(),
    @required Result animeLoaded(KtList<Anime> animeList),
    @required Result animeError(),
    @required Result animeInitial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result animeLoading(),
    Result animeLoaded(KtList<Anime> animeList),
    Result animeError(),
    Result animeInitial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result animeLoading(AnimeLoading value),
    @required Result animeLoaded(AnimeLoaded value),
    @required Result animeError(AnimeError value),
    @required Result animeInitial(AnimeInitial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result animeLoading(AnimeLoading value),
    Result animeLoaded(AnimeLoaded value),
    Result animeError(AnimeError value),
    Result animeInitial(AnimeInitial value),
    @required Result orElse(),
  });
}

abstract class $AnimeStateCopyWith<$Res> {
  factory $AnimeStateCopyWith(
          AnimeState value, $Res Function(AnimeState) then) =
      _$AnimeStateCopyWithImpl<$Res>;
}

class _$AnimeStateCopyWithImpl<$Res> implements $AnimeStateCopyWith<$Res> {
  _$AnimeStateCopyWithImpl(this._value, this._then);

  final AnimeState _value;
  // ignore: unused_field
  final $Res Function(AnimeState) _then;
}

abstract class $AnimeLoadingCopyWith<$Res> {
  factory $AnimeLoadingCopyWith(
          AnimeLoading value, $Res Function(AnimeLoading) then) =
      _$AnimeLoadingCopyWithImpl<$Res>;
}

class _$AnimeLoadingCopyWithImpl<$Res> extends _$AnimeStateCopyWithImpl<$Res>
    implements $AnimeLoadingCopyWith<$Res> {
  _$AnimeLoadingCopyWithImpl(
      AnimeLoading _value, $Res Function(AnimeLoading) _then)
      : super(_value, (v) => _then(v as AnimeLoading));

  @override
  AnimeLoading get _value => super._value as AnimeLoading;
}

class _$AnimeLoading implements AnimeLoading {
  const _$AnimeLoading();

  @override
  String toString() {
    return 'AnimeState.animeLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AnimeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result animeLoading(),
    @required Result animeLoaded(KtList<Anime> animeList),
    @required Result animeError(),
    @required Result animeInitial(),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result animeLoading(),
    Result animeLoaded(KtList<Anime> animeList),
    Result animeError(),
    Result animeInitial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeLoading != null) {
      return animeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result animeLoading(AnimeLoading value),
    @required Result animeLoaded(AnimeLoaded value),
    @required Result animeError(AnimeError value),
    @required Result animeInitial(AnimeInitial value),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result animeLoading(AnimeLoading value),
    Result animeLoaded(AnimeLoaded value),
    Result animeError(AnimeError value),
    Result animeInitial(AnimeInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeLoading != null) {
      return animeLoading(this);
    }
    return orElse();
  }
}

abstract class AnimeLoading implements AnimeState {
  const factory AnimeLoading() = _$AnimeLoading;
}

abstract class $AnimeLoadedCopyWith<$Res> {
  factory $AnimeLoadedCopyWith(
          AnimeLoaded value, $Res Function(AnimeLoaded) then) =
      _$AnimeLoadedCopyWithImpl<$Res>;
  $Res call({KtList<Anime> animeList});
}

class _$AnimeLoadedCopyWithImpl<$Res> extends _$AnimeStateCopyWithImpl<$Res>
    implements $AnimeLoadedCopyWith<$Res> {
  _$AnimeLoadedCopyWithImpl(
      AnimeLoaded _value, $Res Function(AnimeLoaded) _then)
      : super(_value, (v) => _then(v as AnimeLoaded));

  @override
  AnimeLoaded get _value => super._value as AnimeLoaded;

  @override
  $Res call({
    Object animeList = freezed,
  }) {
    return _then(AnimeLoaded(
      animeList == freezed ? _value.animeList : animeList as KtList<Anime>,
    ));
  }
}

class _$AnimeLoaded implements AnimeLoaded {
  const _$AnimeLoaded(this.animeList) : assert(animeList != null);

  @override
  final KtList<Anime> animeList;

  @override
  String toString() {
    return 'AnimeState.animeLoaded(animeList: $animeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnimeLoaded &&
            (identical(other.animeList, animeList) ||
                const DeepCollectionEquality()
                    .equals(other.animeList, animeList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(animeList);

  @override
  $AnimeLoadedCopyWith<AnimeLoaded> get copyWith =>
      _$AnimeLoadedCopyWithImpl<AnimeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result animeLoading(),
    @required Result animeLoaded(KtList<Anime> animeList),
    @required Result animeError(),
    @required Result animeInitial(),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeLoaded(animeList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result animeLoading(),
    Result animeLoaded(KtList<Anime> animeList),
    Result animeError(),
    Result animeInitial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeLoaded != null) {
      return animeLoaded(animeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result animeLoading(AnimeLoading value),
    @required Result animeLoaded(AnimeLoaded value),
    @required Result animeError(AnimeError value),
    @required Result animeInitial(AnimeInitial value),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result animeLoading(AnimeLoading value),
    Result animeLoaded(AnimeLoaded value),
    Result animeError(AnimeError value),
    Result animeInitial(AnimeInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeLoaded != null) {
      return animeLoaded(this);
    }
    return orElse();
  }
}

abstract class AnimeLoaded implements AnimeState {
  const factory AnimeLoaded(KtList<Anime> animeList) = _$AnimeLoaded;

  KtList<Anime> get animeList;
  $AnimeLoadedCopyWith<AnimeLoaded> get copyWith;
}

abstract class $AnimeErrorCopyWith<$Res> {
  factory $AnimeErrorCopyWith(
          AnimeError value, $Res Function(AnimeError) then) =
      _$AnimeErrorCopyWithImpl<$Res>;
}

class _$AnimeErrorCopyWithImpl<$Res> extends _$AnimeStateCopyWithImpl<$Res>
    implements $AnimeErrorCopyWith<$Res> {
  _$AnimeErrorCopyWithImpl(AnimeError _value, $Res Function(AnimeError) _then)
      : super(_value, (v) => _then(v as AnimeError));

  @override
  AnimeError get _value => super._value as AnimeError;
}

class _$AnimeError implements AnimeError {
  const _$AnimeError();

  @override
  String toString() {
    return 'AnimeState.animeError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AnimeError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result animeLoading(),
    @required Result animeLoaded(KtList<Anime> animeList),
    @required Result animeError(),
    @required Result animeInitial(),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result animeLoading(),
    Result animeLoaded(KtList<Anime> animeList),
    Result animeError(),
    Result animeInitial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeError != null) {
      return animeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result animeLoading(AnimeLoading value),
    @required Result animeLoaded(AnimeLoaded value),
    @required Result animeError(AnimeError value),
    @required Result animeInitial(AnimeInitial value),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result animeLoading(AnimeLoading value),
    Result animeLoaded(AnimeLoaded value),
    Result animeError(AnimeError value),
    Result animeInitial(AnimeInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeError != null) {
      return animeError(this);
    }
    return orElse();
  }
}

abstract class AnimeError implements AnimeState {
  const factory AnimeError() = _$AnimeError;
}

abstract class $AnimeInitialCopyWith<$Res> {
  factory $AnimeInitialCopyWith(
          AnimeInitial value, $Res Function(AnimeInitial) then) =
      _$AnimeInitialCopyWithImpl<$Res>;
}

class _$AnimeInitialCopyWithImpl<$Res> extends _$AnimeStateCopyWithImpl<$Res>
    implements $AnimeInitialCopyWith<$Res> {
  _$AnimeInitialCopyWithImpl(
      AnimeInitial _value, $Res Function(AnimeInitial) _then)
      : super(_value, (v) => _then(v as AnimeInitial));

  @override
  AnimeInitial get _value => super._value as AnimeInitial;
}

class _$AnimeInitial implements AnimeInitial {
  const _$AnimeInitial();

  @override
  String toString() {
    return 'AnimeState.animeInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AnimeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result animeLoading(),
    @required Result animeLoaded(KtList<Anime> animeList),
    @required Result animeError(),
    @required Result animeInitial(),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result animeLoading(),
    Result animeLoaded(KtList<Anime> animeList),
    Result animeError(),
    Result animeInitial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeInitial != null) {
      return animeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result animeLoading(AnimeLoading value),
    @required Result animeLoaded(AnimeLoaded value),
    @required Result animeError(AnimeError value),
    @required Result animeInitial(AnimeInitial value),
  }) {
    assert(animeLoading != null);
    assert(animeLoaded != null);
    assert(animeError != null);
    assert(animeInitial != null);
    return animeInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result animeLoading(AnimeLoading value),
    Result animeLoaded(AnimeLoaded value),
    Result animeError(AnimeError value),
    Result animeInitial(AnimeInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (animeInitial != null) {
      return animeInitial(this);
    }
    return orElse();
  }
}

abstract class AnimeInitial implements AnimeState {
  const factory AnimeInitial() = _$AnimeInitial;
}
