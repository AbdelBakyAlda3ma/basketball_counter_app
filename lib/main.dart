import 'package:basketball_counter_app/pages/counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallPointCounter());
}

class BasketBallPointCounter extends StatelessWidget {
  const BasketBallPointCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}
