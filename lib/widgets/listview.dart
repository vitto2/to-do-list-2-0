import 'package:flutter/material.dart';

class Mylistview extends StatefulWidget {
  Mylistview({
    required itemCountValue,
    required leadingValue,
    required String titleValue,
    required Widget trailingValue,
    super.key,
  }) {
    leading = leadingValue;
    title = titleValue;
    trailing = trailingValue;
    itemCount = itemCountValue;
  }

  Widget? leading;
  Widget? trailing;
  late String title;
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
        title: Text(widget.title),
        trailing: widget.trailing,
      ),
    );
  }
}
