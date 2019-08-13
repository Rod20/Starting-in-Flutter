import 'package:flutter/material.dart';
import 'profile_places.dart';

class ProfilePlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 280
      ),
      child: ListView(
        children: <Widget>[
          ProfilePlaces("assets/images/image1.jpg","Hermosas playas en algun lugar del mundo","Distancia 64 kms.","Paraiso"),
          ProfilePlaces("assets/images/image2.jpg","Hermosas playas en algun lugar del mundo","Distancia 64 kms.","Paraiso"),
          ProfilePlaces("assets/images/image3.jpg","Hermosas playas en algun lugar del mundo","Distancia 64 kms.","Paraiso"),
          ProfilePlaces("assets/images/image4.jpg","Hermosas playas en algun lugar del mundo","Distancia 64 kms.","Paraiso"),
        ],
      ),
    );
  }
}
