import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/Bloc/bloc_wallet.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class CreateWallet extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return _CreateWallet();
  }

}

class _CreateWallet extends State<CreateWallet> {
  BlocWallet blocWallet;

  @override
  Widget build(BuildContext context) {
    blocWallet = BlocWallet();
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
                _Title(),
                _Advertencia(),
                _Mnemonic()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _Mnemonic() {
    return Container(
      padding: EdgeInsets.only(
        top:14,
        bottom: 14,
        left: 20,
        right: 20,
      ),
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Text(
          blocWallet.mnemonic(),
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _Title() {
    return Text(
      "Esta es su frase de recuperación",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20,
          fontFamily: "FontBold",
          color: Colors.black54
      ),
    );
  }
  Widget _Advertencia() {
    return Container(
      padding: EdgeInsets.all(4),
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
  }


}