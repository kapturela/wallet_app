import 'package:flutter/material.dart';
import 'package:wallet_app/Cryptos/ui/widgets/crypto.dart';


class ListCryptos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
        title: Text(
          "SELECCIONAR CRIPTOMONEDAS",
          style: TextStyle(
              fontFamily: "Fontbold",
              fontSize: 14
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Crypto("Bitcoin", "btc"),
            Crypto("Litcoin", "ltc"),
            Crypto("Onixcoin", "onx"),
            Crypto("Dash", "dash"),
          ],
        )
      ),
    );
  }

}