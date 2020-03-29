import 'package:flutter/material.dart';

class ButtonPrimary extends StatefulWidget {
  final String titleButton;
  final VoidCallback onPressed;

  ButtonPrimary({Key key, @required this.titleButton, @required this.onPressed});

  @override
  State createState() {
    // TODO: implement createState
    return _ButtonPrimary();
  }

}

class _ButtonPrimary extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
        bottom: 10
      ),
      child: RaisedButton(
        onPressed: () {},
        padding: const EdgeInsets.all(0.0),
        textColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(6.0),
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(40, 4, 137, 1),
                Color.fromRGBO(23, 26, 60, 1),
              ],
              begin: FractionalOffset(0.3, 0.0),
            ),
          ),
          child:Text(
            widget.titleButton,
            style: TextStyle(
              fontFamily: "FontRegular",
              fontSize: 15,
            ),
        ),
        ),
      ),
    );
  }

}