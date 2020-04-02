import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/ui/widgets/nav_drawer.dart';
import 'package:wallet_app/Cryptos/ui/widgets/saldo_crypto.dart';
import 'package:wallet_app/Wallet/ui/widgets/saldo_total.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
        title: Text("Billetera"),
      ),
      body: Stack(
        children: <Widget>[
          BackgroundScreen(),
          SaldoTotal(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            margin: EdgeInsets.only(top: 40),
            height: 254,
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