import 'package:flutter/material.dart';
import 'package:wallet_app/User/ui/widgets/form_login.dart';

class Logo extends StatelessWidget {

  final double height;
  final double width;
  final double marginBottom;

  Logo({Key key, @required this.height, @required this.width, this.marginBottom});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: marginBottom),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}