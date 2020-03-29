import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 90,
      width: 83,
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ISOTIPO.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}