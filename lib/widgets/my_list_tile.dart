import 'package:flutter/material.dart';

class Mylisttile extends StatefulWidget {
  Mylisttile({
    required noteValue,
    required leadingValue,
    required Widget trailingValue,
    required Function() ontapTrailingValue,
    super.key,
  }) {
    title = noteValue;
    leading = leadingValue;
    onTapTrailing = ontapTrailingValue;
    trailing = trailingValue;
  }

  Widget? leading;
  Widget? trailing;
  int? itemCount;
  late String title;
  Function()? onTapTrailing;

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
        onTap: widget.onTapTrailing,
        child: widget.trailing,
      ),
    );
  }
}
