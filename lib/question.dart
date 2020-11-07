import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 3.5,
          style: BorderStyle.solid,
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      height: 150.0,
      margin: EdgeInsets.only(
        top: 25.0,
        bottom: 30.0,
        left: 30.0,
        right: 30.0,
      ),
      padding: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
