import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';

class CreateWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Titulo = Text(
      "Esta es su frase de recuperación",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontFamily: "FontBold",
        color: Colors.black54
      ),
    );

    final TextAdvertencia = Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Text(
        "Por favor resguardela porque con ella podrá en un futuro "
        "recuperar sus fondos. La persona que posee esta frase posee sus fondos.",
        style: TextStyle(
            fontSize: 16,
            fontFamily: "FontLight",
            color: Colors.black54,
        ),
      ),
    );

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Wallet"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
      child: Stack(
        children: <Widget>[
          BackgroundScreen(),
          Column(
            children: <Widget>[
              Titulo,
              TextAdvertencia
            ],
          )
        ],
      ),
      ),
    );
  }

}