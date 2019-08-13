import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/image1.jpg"),
          CardImage("assets/images/image2.jpg"),
          CardImage("assets/images/image3.jpg"),
          CardImage("assets/images/image4.jpg"),
          CardImage("assets/images/image5.jpg"),
          CardImage("assets/images/image6.jpg")
        ],
      ),
    );
  }
}
