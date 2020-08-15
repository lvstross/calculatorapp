import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: ButtonRow(),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double topHeight = MediaQuery.of(context).size.height / 8;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                right: 20,
                bottom: 5,
                top: topHeight,
              ),
              child: Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              text: "AC",
              color: Colors.grey[300],
              textColor: Colors.black,
            ),
            CircleButton(
              text: "+/-",
              color: Colors.grey[300],
              textColor: Colors.black,
            ),
            CircleButton(
              text: "%",
              color: Colors.grey[300],
              textColor: Colors.black,
            ),
            CircleButton(
              text: "÷",
              color: Colors.orange[400],
              textSize: 46,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              text: "7",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "8",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "9",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "×",
              color: Colors.orange[400],
              textSize: 46,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              text: "4",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "5",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "6",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "−",
              color: Colors.orange[400],
              textSize: 46,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              text: "1",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "2",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "3",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "+",
              color: Colors.orange[400],
              textSize: 46,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              text: "0",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "info",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: ".",
              color: Colors.grey[850],
              textColor: Colors.white,
            ),
            CircleButton(
              text: "=",
              color: Colors.orange[400],
              textSize: 46,
            ),
          ],
        ),
      ],
    );
  }
}

class CircleButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final double textSize;
  CircleButton(
      {this.color = Colors.grey,
      this.text = "",
      this.textColor = Colors.white,
      this.textSize = 36});
  @override
  Widget build(context) {
    double margin = 6.0;
    double size = (MediaQuery.of(context).size.width / 4) - (margin * 2);
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.all(margin),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
