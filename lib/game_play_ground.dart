import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class GamePlayGround extends StatefulWidget {
  const GamePlayGround({Key? key, required this.rows, required this.columns})
      : super(key: key);

  static const routeName = '/gamePlayGround';
  final int rows;
  final int columns;

  @override
  _GamePlayGroundState createState() => _GamePlayGroundState();
}

class _GamePlayGroundState extends State<GamePlayGround> {
  late Timer _timer;
  void startTimer() {
    _timer = new Timer.periodic(
      const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    var rng = Random();
    List randomIntegers = [];

    int maxLength;
    switch (widget.rows) {
      case 2:
        maxLength = 2;
        break;
      case 4:
        maxLength = 6;
        break;
      case 6:
        maxLength = 12;
        break;
      case 8:
        maxLength = 18;
        break;
      default:
        maxLength = 0;
        break;
    }
    while (randomIntegers.length < maxLength) {
      var ranNum = rng.nextInt(widget.rows * widget.columns);
      if (!randomIntegers.contains(ranNum)) {
        randomIntegers.add(ranNum);
      }
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Score: ', style: GoogleFonts.montserrat(fontSize: 24)),
              Text('Time: ', style: GoogleFonts.montserrat(fontSize: 24))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          columnGenerator(widget.columns, randomIntegers),
        ],
      ),
    );
  }

  Widget rowGenerator(int rows, int columnNumber, List randomIntegers) {
    List<Widget> rowsList = <Widget>[];
    for (var i = 0; i < rows; i++) {
      final _key = i + widget.columns * columnNumber;
      rowsList.add(
        InkWell(
          key: Key('$_key'),
          onTap: () {
            // To check my the location of the bomb
            print(randomIntegers);
            if (randomIntegers.contains(_key)) {
              print('>>>>>>>We have got a bomb... Blast away');
            }
          },
          child: Container(
            width: 50,
            height: 50,
            child:
                Center(child: Text('${i + (widget.columns * columnNumber)}')),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowsList,
    );
  }

  Widget columnGenerator(int columns, List randomIntegers) {
    List<Widget> columnsList = <Widget>[];
    for (var i = 0; i < columns; i++) {
      columnsList.add(rowGenerator(widget.rows, i, randomIntegers));
    }
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: columnsList,
    );
  }
}

class GamePlayGroundArguments {
  final int rows;
  final int columns;

  GamePlayGroundArguments(this.rows, this.columns);
}
