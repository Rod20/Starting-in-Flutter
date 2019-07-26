import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace, descriptionPlace;
  int stars;

  DescriptionPlace(this.namePlace,this.descriptionPlace,this.stars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description= Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        overflow: TextOverflow.clip,
        style: TextStyle(
          color: Colors.black38,
          fontSize: 15
        ),
      ),
    );
    final star_half=Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border=Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    final star= Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final text_stars = Row(
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )
      ],
    );

    return Column(
      children: <Widget>[
        text_stars,
        description
      ],
    );


  }

}