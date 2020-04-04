import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/ui/widgets/nav_drawer.dart';
import 'package:wallet_app/Cryptos/ui/widgets/saldo_crypto.dart';
import 'package:wallet_app/Wallet/ui/widgets/saldo_total.dart';
import 'package:wallet_app/Shared/Widgets/header_app.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // drawer: NavDrawer(),
      /*appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
        title: Text("Billetera"),
      ),*/

      body: Stack(
        children: <Widget>[
          BackgroundScreen(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BackgroundScreen(),
                HeaderApp(title: "Billetera"),
                SaldoTotal(),
                getContent()
              ],
            ),
          )
        ],
      )
    );
  }

  Widget getContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SaldoCrypto(symbolCrypto: "btc"),
          SaldoCrypto(symbolCrypto: "dash"),
          SaldoCrypto(symbolCrypto: "onx")
        ],
      ),
    );
  }

}