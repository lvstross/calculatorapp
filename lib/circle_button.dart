import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final double textSize;
  final Function tap;
  CircleButton(
      {this.color, this.text, this.textColor, this.textSize, this.tap});
  @override
  Widget build(context) {
    double margin = 6.0;
    double size = (MediaQuery.of(context).size.width / 4) - (margin * 2);
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.all(margin),
      child: Center(
        child: InkWell(
          onTap: tap,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
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
