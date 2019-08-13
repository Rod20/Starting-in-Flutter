import 'package:flutter/material.dart';

class ProfilePlaces extends StatelessWidget {

  String imagePath = "assets/images/image1.jpg";
  String placeName = "Paraiso";
  String placeDescription = "Hermosas playas ubicadas en algun lugar del mundo.";
  String placeDistance = "Distancia 64 kms.";

  ProfilePlaces(this.imagePath,this.placeDescription,this.placeDistance,this.placeName);

  @override
  Widget build(BuildContext context) {

    final imageCard = Container(
      height: 211.0,
      margin: EdgeInsets.only(
        left: 15.0,
        right: 15.0
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.7)
          )
        ]
      )
    );

    final imageCardText = Container(
      height: 98.883,
      width: 251.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.7)
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          top: 15.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                placeName,
                style: TextStyle(
                  color: Color(0xff231f20),
                  fontWeight: FontWeight.w900,
                  fontSize: 16.23
                ),
              ),
            ),
            Expanded(
              child: Text(
                placeDescription,
                style: TextStyle(
                    color: Color(0xff808285),
                    fontWeight: FontWeight.w100,
                    fontSize: 9
                ),
              ),
            ),
            Expanded(
              child: Text(
                placeDistance,
                style: TextStyle(
                    color: Color(0xfff7941e),
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          bottom: 100
      ),
      child: Stack(
        alignment: Alignment(0, 1.8),
        children: <Widget>[
          imageCard,
          imageCardText
        ],
      ),
    );
  }
}
