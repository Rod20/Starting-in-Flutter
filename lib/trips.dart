import 'package:flutter/material.dart';

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                )
              ]
          )
      ),
    );
  }
}
