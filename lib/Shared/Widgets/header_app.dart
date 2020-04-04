import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  final String title;

  HeaderApp({Key key, @required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(32, 39, 101, 1),
              Color.fromRGBO(46, 57, 136, 1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
          )
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: "FontNormal",
            fontWeight: FontWeight.w300,
            color: Colors.white60,
            fontSize: 20
          ),
        ),
      ),
    );
  }

}