import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final double height;
  final double width;
  final bool gray;

  Logo({Key key, @required this.height, @required this.width, this.gray});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: _getLogo(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AssetImage _getLogo() {
    if(gray) {
      return AssetImage("assets/images/ISOTIPO_GRIS.png");
    } else {
      return AssetImage("assets/images/ISOTIPO.png");
    }

  }
}