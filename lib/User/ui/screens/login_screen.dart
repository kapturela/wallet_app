import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Shared/Widgets/logo.dart';
import 'package:wallet_app/User/ui/widgets/form_login.dart';


class LoginScreen extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundScreen(),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Logo(height: 80, width: 200, marginBottom: 100),
                FormLogin(),
              ],
            ),
          )
        ],
      ),
    );
  }

}