import 'package:anime_search/domain/auth/value_objects.dart';
import 'package:anime_search/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Either<ValueFailure<String>, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<ValueFailure<String>, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<ValueFailure<String>, Unit>> signInWithGoogle();
}
