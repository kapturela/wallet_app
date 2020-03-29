import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/button_primary.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonPrimary(titleButton: "Crear Billetara",  onPressed: () {},),
                    ButtonPrimary(titleButton: "Restaurar Billetara", onPressed: () {}),
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