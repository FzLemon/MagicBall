import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Center(
              child: Text('Ask Me Anything',
                style: TextStyle(
                  fontFamily: 'Russo_One',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          backgroundColor: Colors.black,
        ),
        body: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball>  {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[
                Text(
                    'Think A Question In Your Mind,\nThen Click On The Magic Ball\n\n',
                     style: TextStyle(
                      fontFamily: 'Russo_One',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        ballNumber = Random().nextInt(4) + 1;
                        // Image.asset('images/ball$ballNumber.jpg');
                        print('Ball Number $ballNumber');
                      });
                    },
                    child: Image.asset(
                      'images/ball$ballNumber.png',
                    ),
                  ),
                ),
            ]
        ),
      );
    }
  }