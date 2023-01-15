import 'package:flutter/material.dart';

class Mylisttile extends StatefulWidget {
  Mylisttile({
    required noteValue,
    required leadingValue,
    required Widget trailingValue,
    required Function() ontapValue,
    super.key,
  }) {
    title = noteValue;
    leading = leadingValue;
    onTap = ontapValue;
    trailing = trailingValue;
  }

  Widget? leading;
  Widget? trailing;
  int? itemCount;
  late String title;
  Function()? onTap;

  @override
  State<Mylisttile> createState() => _MylisttileState();
}

class _MylisttileState extends State<Mylisttile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leading,
      title: Text(widget.title),
      trailing: GestureDetector(
        onTap: widget.onTap,
        child: widget.trailing,
      ),
    );
  }
}
