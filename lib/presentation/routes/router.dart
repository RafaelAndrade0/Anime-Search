import 'package:anime_search/presentation/home/home_page.dart';
import 'package:anime_search/presentation/sign_in/sign_in_page.dart';
import 'package:anime_search/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  Homepage homepage;
}
