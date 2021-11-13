import 'package:flutter/material.dart';
import 'package:minesweeper/game_options_menu.dart';
import 'package:minesweeper/game_play_ground.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GameOptionsMenu(),
      onGenerateRoute: (settings) {
        if (settings.name == GamePlayGround.routeName) {
          final args = settings.arguments as GamePlayGroundArguments;

          return MaterialPageRoute(
            builder: (context) =>
                GamePlayGround(rows: args.rows, columns: args.columns),
          );
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
