import 'package:anime_search/injection.dart';
import 'package:anime_search/presentation/core/app_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppCore());
}
