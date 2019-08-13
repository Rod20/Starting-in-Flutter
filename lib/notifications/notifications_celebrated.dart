import 'package:flutter/material.dart';

class NotificationsCelebrated extends StatelessWidget {

  String userC = "andrea12";
  String celebrated = "celebró tu publicación";
  String timeC = "8sem";
  String photoC = "assets/images/womanCel.jpg";
  String postC = "assets/images/image5.jpg";

  //NotificationsCelebrated(this.userC, this.celebrated, this.timeC, this.photoC, this.postC);

  @override
  Widget build(BuildContext context) {

    final detailCelebrated = Container(
      margin: EdgeInsets.only(
          left: 15.0
      ),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                fontSize: 14.0
            ),
            children: [
              TextSpan(
                text: userC+" ",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: celebrated+" ",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: timeC,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14.0,
                    color: Color(0xFFa3a5a7)
                ),
              ),
            ]
        ),
      ),
    );

    final photoCelebrated = Container(
      width: 60.0,
      height: 60.0,
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(photoC),
              fit: BoxFit.cover
          )
      ),
    );

    final postCelebrated = Container(
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 20.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(postC)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          /*boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.1)  // la posicion de la sombra en 'x' y en 'y'
            )
          ]*/
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: photoCelebrated
        ),
        Expanded(
          flex: 3,
            child: detailCelebrated
        ),
        Expanded(
            child: postCelebrated
        )
      ],
    );
  }
}