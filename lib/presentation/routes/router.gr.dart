// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:anime_search/presentation/splash/splash_page.dart';
import 'package:anime_search/presentation/sign_in/sign_in_page.dart';
import 'package:anime_search/presentation/home/home_page.dart';
import 'package:anime_search/presentation/anime_details/anime_details.dart';
import 'package:anime_search/domain/anime/anime.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const homepage = '/homepage';
  static const animeDetails = '/anime-details';
  static const all = {
    splashPage,
    signInPage,
    homepage,
    animeDetails,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.homepage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Homepage(),
          settings: settings,
        );
      case Routes.animeDetails:
        if (hasInvalidArgs<AnimeDetailsArguments>(args)) {
          return misTypedArgsRoute<AnimeDetailsArguments>(args);
        }
        final typedArgs =
            args as AnimeDetailsArguments ?? AnimeDetailsArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              AnimeDetails(key: typedArgs.key, anime: typedArgs.anime),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//AnimeDetails arguments holder class
class AnimeDetailsArguments {
  final Key key;
  final Anime anime;
  AnimeDetailsArguments({this.key, this.anime});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushHomepage() => pushNamed(Routes.homepage);

  Future pushAnimeDetails({
    Key key,
    Anime anime,
  }) =>
      pushNamed(
        Routes.animeDetails,
        arguments: AnimeDetailsArguments(key: key, anime: anime),
      );
}
