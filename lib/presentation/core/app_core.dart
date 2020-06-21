import 'package:anime_search/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class AppCore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepPurple[800],
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      home: SignInPage(),
    );
  }
}
