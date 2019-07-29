import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/therion.jpg","Varuna Yasas","1 review 5 photos","There is an amazing place is Sri Lanka"),
        Review("assets/images/peopleone.jpg","Kendra Martinez","2 review 5 photos","There is an amazing place is Sri Lanka"),
        Review("assets/images/peopletwo.jpg","Roger Rodriguez","2 review 2 photos","There is an amazing place is Sri Lanka")
      ],
    );
  }
}
