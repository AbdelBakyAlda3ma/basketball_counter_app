import 'package:flutter/material.dart';
import '../functions/add_points.dart';
import 'custom_button.dart';

// ignore: must_be_immutable
class TeamColunm extends StatefulWidget {
  final String teamName;
  int teamPointsCounter;
  TeamColunm(
      {super.key, required this.teamName, required this.teamPointsCounter});

  @override
  State<TeamColunm> createState() => _TeamColunmState();
}

class _TeamColunmState extends State<TeamColunm> {
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Team ${widget.teamName}',
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: 180,
            width: 135,
            child: FittedBox(
              child: Text(
                widget.teamPointsCounter.toString(),
                style: const TextStyle(fontSize: 150),
              ),
            ),
          ),
          CustomPointsButton(
            label: 'add 1 point',
            onPressed: () {
              setState(() {
                widget.teamPointsCounter = addPoints(
                  teamPointsCounter: widget.teamPointsCounter,
                  pointsAddingByButtonClick: 1,
                );
              });
            },
          ),
          CustomPointsButton(
            label: 'add 2 point',
            onPressed: () {
              setState(() {
                widget.teamPointsCounter = addPoints(
                  teamPointsCounter: widget.teamPointsCounter,
                  pointsAddingByButtonClick: 2,
                );
              });
            },
          ),
          CustomPointsButton(
            label: 'add 3 point',
            onPressed: () {
              setState(() {
                widget.teamPointsCounter = addPoints(
                  teamPointsCounter: widget.teamPointsCounter,
                  pointsAddingByButtonClick: 3,
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
