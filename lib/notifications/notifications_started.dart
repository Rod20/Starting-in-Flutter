import 'package:flutter/material.dart';

class NotificationsStarted extends StatelessWidget {

  String user = "andreasolares12";
  String started = "comenzó a seguirte.";
  String time = "16sem";
  String photo = "assets/images/womanCel3.jpg";
  String buttonFollow = "+ SEGUIR";

  //NotificationsStarted(this.user, this.started, this.time, this.photo, this.buttonFollow);

  @override
  Widget build(BuildContext context) {

    final detailStarted = Container(
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
                text: started+" ",
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

    final photoStarted = Container(
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

    final buttonfollow = InkWell(
      onTap: (){
        // Funcionalidad del boton
      },
      child: Container(
        margin: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 20.0
        ),
        height: 16.0,
        width: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xffaa530e),
            //gradient: Color(0xffaa530e),
            /*LinearGradient(
                colors: [
                  Color(0xffC68354),
                  Color(0xffaa530e),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )*/
        ),
        child: Center(
          child: Text(
            buttonFollow,
            style: TextStyle(
                fontSize: 9.0,
                color: Colors.white
            ),
          ),
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: photoStarted
        ),
        Expanded(
            flex: 3,
            child: detailStarted
        ),
        Expanded(
            child: buttonfollow,
        )
      ],
    );
  }
}