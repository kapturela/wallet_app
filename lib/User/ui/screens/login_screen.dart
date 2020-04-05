import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Shared/Widgets/logo.dart';
import 'package:wallet_app/User/ui/screens/welcome_screen.dart';
import 'package:wallet_app/User/ui/widgets/form_login.dart';
import 'package:wallet_app/User/Bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:wallet_app/Wallet/Bloc/bloc_wallet.dart';

class LoginScreen extends StatefulWidget  {
  @override
  State createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  BlocWallet blocWallet;

  @override
  Widget build(BuildContext context) {
    blocWallet = BlocProvider.of(context);

    return StreamBuilder(
      stream: blocWallet.isLoggedIn,
      builder: (BuildContext, AsyncSnapshot snapshot ) {
        if(snapshot.data == null) {
          return Container(child: Center(child: CircularProgressIndicator()));

        } else if(snapshot.data) {
          return getLoginUI();

        } else {
          return WelcomeScreen();
        }
      }
    );
  }

  Widget getLoginUI() {
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