import 'package:flutter/material.dart';
import 'home_trips.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Notifaciones"),
        ),
        //body: new DescriptionPlace("Bahamas",descriptionDummy,4),
        body: HomeTrips()// Stack Sirve para poner un elemento encima de otro
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected;
  String textRadioButton="ToDo's";

  void setChangeRadio(int value) {
    setState(() {
      selected=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Text(textRadioButton),
                value: 1,
                groupValue: selected,
                onChanged: (int val){
                  setChangeRadio(val);
                }
            )
            /*Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$selected',
              style: Theme.of(context).textTheme.display1,
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: setChangeRadio,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
