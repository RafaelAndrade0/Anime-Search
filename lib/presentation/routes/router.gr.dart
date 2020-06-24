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
        return MaterialPageRoute<dynamic>(
          builder: (context) => AnimeDetails(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushHomepage() => pushNamed(Routes.homepage);

  Future pushAnimeDetails() => pushNamed(Routes.animeDetails);
}
