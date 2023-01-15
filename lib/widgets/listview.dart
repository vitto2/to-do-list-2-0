import 'package:flutter/material.dart';

class Mylistview extends StatefulWidget {
  Mylistview(
      {required leadingValue,
      required String textValue,
      required Widget trailingValue,
      required itemCountValue,
      super.key}) {
    leading = leadingValue;
    text = textValue;
    trailing = trailingValue;
    itemCount = itemCountValue;
  }

  Widget? leading;
  Widget? trailing;
  late String text;
  int? itemCount;

  @override
  State<Mylistview> createState() => _MylistviewState();
}

class _MylistviewState extends State<Mylistview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemCount,
      itemBuilder: (context, index) => ListTile(
        leading: widget.leading,
        title: Text(widget.text),
        trailing: widget.trailing,
      ),
    );
  }
}
