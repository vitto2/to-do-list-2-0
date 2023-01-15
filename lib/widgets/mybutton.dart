import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  Mybutton({
    required Function() onpressedValue,
    required Color color,
    super.key,
  }) {
    onpressed = onpressedValue;
    colorButton = color;
  }
  Function()? onpressed;
  Color? colorButton;

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colorButton,
      ),
      onPressed: widget.onpressed,
      child: const Icon(Icons.add),
    );
  }
}
