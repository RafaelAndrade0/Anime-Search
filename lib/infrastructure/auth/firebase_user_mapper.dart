import 'package:anime_search/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomain on FirebaseUser {
  User toDomain() => User(id: uid);
}
