import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontFamily: 'Sans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            wordSpacing: 1.5,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Text(
            'Ask me anything, Tap to get an answer',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Sans',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15.0),
          child: SizedBox(
            height: 30.0,
            width: 50.0,
            child: Icon(
              Icons.arrow_downward,
              size: 40.0,
              color: Colors.white70,
            ),
          ),
        ),
        Center(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print('$ballNumber got Clicked');
              });
            },
          ),
        ),
      ],
    );
  }
}
