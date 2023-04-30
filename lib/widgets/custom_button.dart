import 'package:flutter/material.dart';
import '../constances.dart';

class CustomPointsButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CustomPointsButton({
    super.key,
    required this.label,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: appPraimaryColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          label,
          style: TextStyle(
            color: buttonsLabelColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
