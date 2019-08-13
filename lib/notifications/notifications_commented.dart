import 'package:flutter/material.dart';

class NotificationsCommented extends StatelessWidget {

  String user = "loreal23_zoom";
  String commented = "comentó:";
  String userComment="Hey, excelente post amigo!!!";
  String time = "16sem";
  String photo = "assets/images/womanCel2.jpg";
  String post = "assets/images/image2.jpg";

  //NotificationsCommented(this.user, this.commented, this.userComment, this.time, this.photo, this.post);

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
                text: user+" ",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: commented+" ",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: userComment+" ",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: time,
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
              image: AssetImage(photo),
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
            image: AssetImage(post)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
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