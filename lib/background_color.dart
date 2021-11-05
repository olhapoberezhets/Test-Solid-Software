import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

class BackgroundColor extends StatefulWidget {
   const BackgroundColor({Key? key}) : super(key: key);

  @override
  _BackgroundColorState createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {

  Color? color;

  changeColor() {
    setState(() {
      color = Color.fromARGB(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Center(
        child: TextButton(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              kHomeTextStyle,
              SizedBox(
                width: 5.0,
              ),
              kIconStyle,
            ],
          ),
          onPressed: changeColor,
        ),
      ),
      backgroundColor: color,
      body: GestureDetector(
        onTap: changeColor,
      ),
    );
  }
}
