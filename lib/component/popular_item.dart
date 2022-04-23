import 'package:flutter/material.dart';

class PopularItem extends StatefulWidget {
  const PopularItem({Key? key}) : super(key: key);

  @override
  _PopularItemState createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
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
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    "Popular Item",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                SizedBox(width: 175),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: categories
                    .map(
                      (category) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          children: [
                            _buildCardImage(),
                            _buildDetails(category)
                          ],
                        ),
                      ),
                    )
                    .toList()),
          ],
        ),
      ),
    );
  }
}

Widget _buildCardImage() {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
      child: Image.asset(
        "images/food.jpg",
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _buildDetails(category) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 200,
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
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(height: 30),
                  SizedBox(
                    width: 200,
                    child: Text(
                      "\$ " + category[2].toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red[400],
                            size: 20.0,
                            semanticLabel:
                                'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
            ],
          ),
        ],
      ),
    ),
  );
}
