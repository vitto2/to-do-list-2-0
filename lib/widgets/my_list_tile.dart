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
  Color? colorLeading = Colors.grey;

  @override
  State<Mylisttile> createState() => _MylisttileState();
}

class _MylisttileState extends State<Mylisttile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () => {
          setState(
            () {
              widget.colorLeading == Colors.grey
                  ? widget.colorLeading = Colors.amber
                  : widget.colorLeading;
            },
          )
        },
        child: Icon(
          widget.iconLeading,
          color: widget.colorLeading,
        ),
      ),
      title: Text(widget.title),
      trailing: GestureDetector(
        onTap: widget.onTapTrailing,
        child: widget.trailing,
      ),
    );
  }
}
