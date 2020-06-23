import 'package:anime_search/application/auth/auth_bloc.dart';
import 'package:anime_search/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: RaisedButton(
          onPressed: () {
            // context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
