import 'package:expanse_tracker/home/home.dart';
import 'package:flutter/material.dart';

final ColorScheme kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 35, 155, 253));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          )),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
