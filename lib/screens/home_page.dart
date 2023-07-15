import 'package:flutter/material.dart';
import 'package:helloworld/widgets/primary_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
        backgroundColor: Colors.yellow
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Container(
            child: PrimaryForm(),
          ),
        ),
      ),
    );
  }
}
