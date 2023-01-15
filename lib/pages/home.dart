import 'package:flutter/material.dart';
import 'package:to_do_02/widgets/listview.dart';
import 'package:to_do_02/widgets/my_text_form_field.dart';
import 'package:to_do_02/widgets/mybutton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "To-Do List :)",
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 100 * 80,
                child: const MytextForm(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 100 * 20,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Mybutton(
                    onpressedValue: () {},
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Mylistview(
                  leadingValue: leadingValue,
                  textValue: textValue,
                  trailingValue: trailingValue,
                  itemCountValue: itemCountValue))
        ],
      ),
    );
  }
}
