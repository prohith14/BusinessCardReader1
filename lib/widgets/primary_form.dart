import 'dart:ffi';

import 'package:flutter/material.dart';

import 'primary_button.dart';
import 'primary_text_field.dart';

import 'package:camera/camera.dart';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class PrimaryForm extends StatefulWidget {
  const PrimaryForm({super.key});

  @override
  State<PrimaryForm> createState() => _PrimaryFormState();
}

class _PrimaryFormState extends State<PrimaryForm> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    void _resetFields() {
      nameController.clear();
      emailController.clear();
      phoneController.clear();
    }

    void _submitForm() {
      // Perform desired action with the form values
      String name = nameController.text;
      String email = emailController.text;
      String password = phoneController.text;
      print('Name: $name');
      print('Email: $email');
      print('Password: $password');
    }
    List<CameraDescription> cameras;

    Future<void> openCamera() async {
      cameras = await availableCameras();
      final camera = cameras.first;

      final cameraController = CameraController(
        camera,
        ResolutionPreset.medium,
      );

      await cameraController.initialize();

      final image = await cameraController.takePicture();
      // processBusinessCard(image);
    }

    return Column(
      children: [
        PrimaryTextField(
          keyBoardType: TextInputType.name,
          label: "Name",
          textController: nameController,
        ),
        SizedBox(height: 20),
        PrimaryTextField(
          keyBoardType: TextInputType.emailAddress,
          label: "email",
          textController: emailController,
        ),
        SizedBox(height: 20),
        PrimaryTextField(
          keyBoardType: TextInputType.phone,
          label: "Phone Number",
          textController: phoneController,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(buttonLabel: "Reset", onPressed: _resetFields),
            SizedBox(width: 10),
            PrimaryButton(buttonLabel: "Submit", onPressed: _submitForm),
          ],
        ),
        SizedBox(height: 10),
        IconButton(onPressed: openCamera, icon: Icon(Icons.camera))
      ],
    );
  }
}
