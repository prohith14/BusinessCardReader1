import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;
  const PrimaryButton({super.key, required this.buttonLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, child: Text(buttonLabel),
    );
  }
}
