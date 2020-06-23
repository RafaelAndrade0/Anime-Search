import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_failure.freezed.dart';

@freezed
abstract class AnimeFailure with _$AnimeFailure {
  const factory AnimeFailure.unexpected() = Unexpected;
}
