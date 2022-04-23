import 'package:efood/component/card_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SetMenu extends StatefulWidget {
  const SetMenu({Key? key}) : super(key: key);

  @override
  State<SetMenu> createState() => _SetMenuState();
}

class _SetMenuState extends State<SetMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Set Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10),
          CardListItem()
        ],
      ),
    );
  }
}
