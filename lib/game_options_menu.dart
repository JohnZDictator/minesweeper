import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minesweeper/game_play_ground.dart';

class GameOptionsMenu extends StatelessWidget {
  const GameOptionsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Choose your matrix:',
            style: GoogleFonts.montserrat(fontSize: 24),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    GamePlayGround.routeName,
                    arguments: GamePlayGroundArguments(2, 2),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      '2 X 2 matrix',
                      style: GoogleFonts.montserrat(fontSize: 18),
                    ),
                  ),
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    GamePlayGround.routeName,
                    arguments: GamePlayGroundArguments(4, 4),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      '4 X 4 matrix',
                      style: GoogleFonts.montserrat(fontSize: 18),
                    ),
                  ),
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    GamePlayGround.routeName,
                    arguments: GamePlayGroundArguments(6, 6),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      '6 X 6 matrix',
                      style: GoogleFonts.montserrat(fontSize: 18),
                    ),
                  ),
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    GamePlayGround.routeName,
                    arguments: GamePlayGroundArguments(8, 8),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      '8 X 8 matrix',
                      style: GoogleFonts.montserrat(fontSize: 18),
                    ),
                  ),
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
