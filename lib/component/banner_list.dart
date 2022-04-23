import 'package:flutter/material.dart';

class BannerList extends StatefulWidget {
  const BannerList({Key? key}) : super(key: key);

  @override
  _BannerListState createState() => _BannerListState();
}

class _BannerListState extends State<BannerList> {
  List<List> categories = [
    ["Bengali Breakfast"],
    ["Indian Breakfast"],
    ["Chinese Breakfast"],
    ["Thai Breakfast"],
    ["Fast Food Breakfast"],
    ["Korean Breakfast"],
    ["Bengali Combo"],
    ["Indian Combo"],
    ["Chinese Combo"],
    ["Thai Combo"],
    ["Fast Food Combo"],
    ["Korean Combo"]
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Banner",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: categories
                  .map(
                    (category) => new Column(
                      children: [_buildCardImage()],
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }
}

Widget _buildCardImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          "images/food.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
