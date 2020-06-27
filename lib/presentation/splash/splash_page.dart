import 'package:anime_search/application/auth/auth_bloc.dart';
import 'package:anime_search/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () {
            // Redirect to home
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.homepage);
          },
          unauthenticated: () {
            // Redirect to SignIn
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
          orElse: () {},
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
