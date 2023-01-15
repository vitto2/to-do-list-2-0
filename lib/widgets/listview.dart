import 'package:flutter/material.dart';

class Mylistview extends StatefulWidget {
  Mylistview({
    required List<String> listValue,
    required itemCountValue,
    required leadingValue,
    required Widget trailingValue,
    required Function() ontapValue,
    super.key,
  }) {
    leading = leadingValue;
    trailing = trailingValue;
    itemCount = itemCountValue;
    list = listValue;
    onTap = ontapValue;
  }

  Widget? leading;
  Widget? trailing;
  int? itemCount;
  List<String> list = [];
  Function()? onTap; 

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
        title: Text(widget.list[index]),
        trailing: GestureDetector(
          onTap: widget.onTap,
          child: widget.trailing,
        ),
      ),
    );
  }
}
