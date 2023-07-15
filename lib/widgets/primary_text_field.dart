import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final TextInputType keyBoardType;
  final String label;
  final TextEditingController textController;
  const PrimaryTextField({super.key, required this.keyBoardType, required this.label, required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        hintText: label,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
        )
      ),
    );
  }
}
