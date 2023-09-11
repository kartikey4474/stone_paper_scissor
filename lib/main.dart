import 'package:flutter/material.dart';
import 'package:stone_paper_whatever/screens/game_page.dart';
import 'package:stone_paper_whatever/screens/home_page.dart';
import 'package:stone_paper_whatever/themes/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/game': (context) => const Game(),
      },
    );
  }
}
