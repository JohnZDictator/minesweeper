import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: _width / widget.rows + 1,
          height: 140,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            itemCount: widget.rows * widget.columns,
            itemBuilder: (BuildContext context, index) {
              return Container(
                child: Text('Hello ${widget.rows}'),
                width: _width / widget.rows + 1,
                height: 40,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all()),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}

class GamePlayGroundArguments {
  final int rows;
  final int columns;

  GamePlayGroundArguments(this.rows, this.columns);
}
