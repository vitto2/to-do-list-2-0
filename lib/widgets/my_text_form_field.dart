import 'package:flutter/material.dart';

class MytextForm extends StatelessWidget {
  MytextForm({TextEditingController? controllerValue, super.key}) {
    controller = controllerValue;
  }

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
