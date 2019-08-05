import 'package:flutter/material.dart';

class TextTodo extends StatelessWidget {
  
  String task = "Realizar Todo's";
  int valueRadio=0;
  
  TextTodo (this.task);
  
  @override
  Widget build(BuildContext context) {
    
    final taskTodo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        task,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );
    
    final radioButtonTodo = Container(
      margin: EdgeInsets.only(
        left: 16.0,
      ),
      child: Radio(
        value: 1,
        groupValue: valueRadio,
        activeColor: Colors.black12,
        onChanged: (val){
          print("Radio $val");
          setRadio(val);
        },
      ),
    );
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        radioButtonTodo,
        taskTodo
      ],
    );
  }

  void setRadio(int value){
    valueRadio = value;
  }
}
