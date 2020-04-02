import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/ui/widgets/nav_drawer.dart';
import 'package:wallet_app/Cryptos/ui/widgets/saldo_crypto.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
        title: Text("Billetera"),
      ),
      body: Stack(
        children: <Widget>[
          BackgroundScreen(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            margin: EdgeInsets.only(top: 70),
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SaldoCrypto(symbolCrypto: "btc"),
                SaldoCrypto(symbolCrypto: "dash"),
                SaldoCrypto(symbolCrypto: "onx")
              ],
            ),
          )
        ],
      ),
    );
  }

}