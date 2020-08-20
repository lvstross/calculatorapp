import 'package:flutter/material.dart';
import './circle_button.dart';

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

class ButtonRow extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  var buttons = [
    {
      'text': 'AC',
      'color': Colors.grey[300],
      'textColor': Colors.black,
      'textSize': 36.0
    },
    {
      'text': '+/-',
      'color': Colors.grey[300],
      'textColor': Colors.black,
      'textSize': 36.0
    },
    {
      'text': '%',
      'color': Colors.grey[300],
      'textColor': Colors.black,
      'textSize': 36.0
    },
    {
      'text': '÷',
      'color': Colors.orange[400],
      'textColor': Colors.white,
      'textSize': 46.0
    },
    {
      'text': '7',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '8',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '9',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '×',
      'color': Colors.orange[400],
      'textColor': Colors.white,
      'textSize': 46.0
    },
    {
      'text': '4',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '5',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '6',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '-',
      'color': Colors.orange[400],
      'textColor': Colors.white,
      'textSize': 46.0
    },
    {
      'text': '1',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '2',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '3',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '+',
      'color': Colors.orange[400],
      'textColor': Colors.white,
      'textSize': 46.0
    },
    {
      'text': '0',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': 'info',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '.',
      'color': Colors.grey[850],
      'textColor': Colors.white,
      'textSize': 36.0
    },
    {
      'text': '=',
      'color': Colors.orange[400],
      'textColor': Colors.white,
      'textSize': 46.0
    },
  ];

  String _displayValue = "0";
  List _values = [];

  void _handleButton(value) {
    setState(() {
      _values.add(value);
      print(_values);
    });
  }

  @override
  Widget build(BuildContext context) {
    double topHeight = MediaQuery.of(context).size.height / 4;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: topHeight,
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(
            right: 20,
            bottom: 5,
          ),
          child: Text(
            _displayValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: List.generate(buttons.length, (index) {
              return CircleButton(
                  text: buttons[index]['text'],
                  color: buttons[index]['color'],
                  textColor: buttons[index]['textColor'],
                  textSize: buttons[index]['textSize'],
                  tap: () {
                    _handleButton(buttons[index]['text']);
                  });
            }),
          ),
        ),
      ],
    );
  }
}
