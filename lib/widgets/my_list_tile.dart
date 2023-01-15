import 'package:flutter/material.dart';

class Mylisttile extends StatefulWidget {
  Mylisttile({
    required noteValue,
    required Widget trailingValue,
    required Function() ontapTrailingValue,
    required IconData? iconLeadingValue,
    super.key,
  }) {
    title = noteValue;
    iconLeading = iconLeadingValue;
    onTapTrailing = ontapTrailingValue;
    trailing = trailingValue;
  }

  IconData? iconLeading;
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
      leading: GestureDetector(
        onTap: () => {},
        child: Icon(widget.iconLeading),
      ),
      title: Text(widget.title),
      trailing: GestureDetector(
        onTap: widget.onTapTrailing,
        child: widget.trailing,
      ),
    );
  }
}
