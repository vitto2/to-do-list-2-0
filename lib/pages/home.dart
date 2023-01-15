import 'package:flutter/material.dart';
import 'package:to_do_02/widgets/my_list_tile.dart';
import 'package:to_do_02/widgets/my_text_form_field.dart';
import 'package:to_do_02/widgets/mybutton.dart';

class Home extends StatefulWidget {
  Home({super.key});

  TextEditingController controller = TextEditingController();
  List<String> list = [];

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
                child: MytextForm(
                  controllerValue: widget.controller,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 100 * 20,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Mybutton(
                    onpressedValue: () {
                      setState(() {
                        widget.list.add(widget.controller.text);
                        widget.controller.clear();
                      });
                    },
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.list.length,
              itemBuilder: ((context, index) => Mylisttile(
                    trailingValue: const Icon(Icons.remove),
                    ontapTrailingValue: () {
                      setState(() {
                        // ignore: prefer_is_empty
                        widget.list.length > 0
                            ? widget.list.removeAt(index)
                            : null;
                      });
                    },
                    noteValue: widget.list[index],
                    iconLeadingValue: Icons.star,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
