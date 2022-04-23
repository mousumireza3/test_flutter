import 'package:flutter/material.dart';

class CardListItem extends StatefulWidget {
  const CardListItem({Key? key}) : super(key: key);

  @override
  _CardListItemState createState() => _CardListItemState();
}

class _CardListItemState extends State<CardListItem> {
  List<List> categories = [
    ["Bengali Breakfast", 4, 450],
    ["Indian Breakfast", 2, 30],
    ["Chinese Breakfast", 5, 50],
    ["Thai Breakfast", 5, 20],
    ["Fast Food Breakfast", 5, 20],
    ["Korean Breakfast", 4, 20],
    ["Bengali Combo", 5, 20],
    ["Indian Combo", 5, 20],
    ["Chinese Combo", 5, 20],
    ["Thai Combo", 5, 20],
    ["Fast Food Combo", 5, 20],
    ["Korean Combo", 5, 100]
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: categories
              .map(
                (category) => new Column(
                  children: [_buildCardImage(), _buildDetails(category)],
                ),
              )
              .toList()),
    );
  }
}

Widget _buildCardImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          "images/food.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget _buildDetails(category) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                2.0,
                2.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
          color: Colors.white38,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child: Container(
                child: Text(
                  category[0],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: Container(
                child: Text(
                  "Set Menu",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (var i = 0; i < category[1]; i++)
                    Container(
                      child: Icon(
                        Icons.star,
                        color: Colors.red[400],
                        size: 15.0,
                        semanticLabel:
                            'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              width: 180,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ " + category[2].toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.red[400],
                      size: 20.0,
                      semanticLabel:
                          'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
