import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/button_primary.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/ui/screens/create_wallet_screen.dart';
import 'package:wallet_app/Shared/Widgets/logo.dart';
import 'package:wallet_app/Wallet/Bloc/bloc_wallet.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:wallet_app/Wallet/ui/screens/home_screen.dart';

class Welcome extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return _Welcome();
  }

}

class _Welcome extends State<Welcome> {
  BlocWallet blocWallet;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    blocWallet = BlocProvider.of(context);
    blocWallet.existWallet();
    return _handleWallet();
  }

  Widget _handleWallet(){
    return StreamBuilder(
      stream: blocWallet.exist,
      // ignore: missing_return
      builder: (BuildContext, AsyncSnapshot snapshot ) {
        if(snapshot.data) {
          return Home();
        } else {
          return _welcomeUI();
        }
      },
    );
  }

  Widget _welcomeUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          BackgroundScreen(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo(height: 90, width: 83, gray: false),
              Text("Bienvenidos \n Kapturela Wallet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "FontRegular",
                  fontSize: 27.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonPrimary(titleButton: "CREAR UNA BILLETERA", top: 20,  onPressed: () {
                      print("next");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateWallet()),
                      );
                    },),
                    ButtonPrimary(titleButton: "RESTAURAR BILLETERA", top: 10, onPressed: () {}),
                  ],
                ),
              ),


            ],
          )
        ],
      ),
    );
  }

}
