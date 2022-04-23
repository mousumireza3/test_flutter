import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CircleListItem extends StatefulWidget {
  const CircleListItem({Key? key}) : super(key: key);

  @override
  _CircleListItemState createState() => _CircleListItemState();
}

class _CircleListItemState extends State<CircleListItem> {
  List<String> categories = [
    "Bengali",
    "Indian",
    "Chinese",
    "Thai",
    "Fast Food",
    "Korean"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: categories
              .map((category) => new Column(
                    children: [_buildCircleImage(), _buildText(category)],
                  ))
              .toList()),
    );
  }
}

Widget _buildCircleImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Container(
      height: 75,
      width: 75,
      padding: EdgeInsets.all(0.5),
      decoration: BoxDecoration(
          color: Colors.red[700], borderRadius: BorderRadius.circular(50)),
      child: ClipOval(
        child: Image.asset(
          "images/food.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget _buildText(category) {
  return Text(
    category,
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  );
}
