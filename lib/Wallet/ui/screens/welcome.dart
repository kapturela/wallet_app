import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/button_primary.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/ui/screens/create_wallet.dart';
import 'package:wallet_app/Shared/Widgets/logo.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          BackgroundScreen(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo(),
              Text("Bienvenidos \n Kapturela Wallet",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "FontRegular",
                    fontSize: 27.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonPrimary(titleButton: "Crear Billetara", top: 20,  onPressed: () {
                      print("next");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateWallet()),
                      );
                    },),
                    ButtonPrimary(titleButton: "Restaurar Billetara", top: 10, onPressed: () {}),
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