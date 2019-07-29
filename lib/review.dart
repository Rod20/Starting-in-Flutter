import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/images/therion.jpg";

  Review (this.pathImage);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover
        )
      ),
    );

    return Row(
      children: <Widget>[
      ],
    );
  }
}
