import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';
import 'text_todo.dart';

class HomeTrips extends StatelessWidget {

  String descriptionDummy="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  String userC = "andrea12";
  String celebrated = "celebró tu publicación";
  String timeCelebrated = "8sem";
  String photoCelebrated = "assets/images/womanCel.jpg";
  String postC = "assets/images/image5.jpg";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas",descriptionDummy,4),
            ReviewList(),
            TextTodo("Review"),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}