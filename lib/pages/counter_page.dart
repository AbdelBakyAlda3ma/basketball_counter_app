import 'package:flutter/material.dart';
import '../constances.dart';
import '../functions/rese_counter.dart';
import '../widgets/custom_button.dart';
import '../widgets/team_column.dart';

// ignore: must_be_immutable
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int teamAPointsCounter = 0;
  int teamBPointsCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appPraimaryColor,
        title: const Text('Points Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamColunm(
                      teamName: 'A', teamPointsCounter: teamAPointsCounter),
                  VerticalDivider(
                    thickness: 1,
                    width: 48,
                    color: Colors.grey.withOpacity(0.5),
                    indent: 28,
                    endIndent: 20,
                  ),
                  TeamColunm(
                      teamName: 'B', teamPointsCounter: teamBPointsCounter),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomPointsButton(
                label: '    Reset    ',
                onPressed: () {
                  setState(() {
                    teamAPointsCounter =
                        resetCounter(counter: teamAPointsCounter);
                    teamBPointsCounter =
                        resetCounter(counter: teamBPointsCounter);
                  });
                }),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
