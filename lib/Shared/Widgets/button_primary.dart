import 'package:flutter/material.dart';

class ButtonPrimary extends StatefulWidget {
  final String titleButton;
  final VoidCallback onPressed;
  final double top;

  ButtonPrimary({Key key, @required this.titleButton, @required this.onPressed, @required this.top});

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
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
            top: widget.top,
            left: 10.0,
            right: 10.0
        ),
        height: 54.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(23, 26, 60, 1),
                  Color.fromRGBO(40, 4, 137, 0.7),
                ],
                begin: FractionalOffset(0.1, 1),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp

            )

        ),
        child: Center(
          child: Text(
            widget.titleButton,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "FontRegular",
                color: Colors.white
            ),

          ),
        ),
      ),
    );
  }

}