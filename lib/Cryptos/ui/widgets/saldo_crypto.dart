import 'package:flutter/material.dart';
import 'package:wallet_app/Cryptos/ui/widgets/charts.dart';
import 'package:wallet_app/Wallet/ui/widgets/btn_enviar_recibir.dart';

class SaldoCrypto extends StatelessWidget {

  final String symbolCrypto;

  SaldoCrypto({Key key, @required this.symbolCrypto});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 10, right: 6),
      width: 340,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(32, 39, 101, 1),
              Color.fromRGBO(46, 57, 136, 1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/"+symbolCrypto+".png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                symbolCrypto.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "FontBold",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          getSaldo(),
          //Charts(),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: (
                BtnEnviarRecibir(titulo: "Enviar")
            ),
          )
        ],
      ),
    );
  }

  Widget getSaldo() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 10),
      width: 300,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white10)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "2.234612985",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11
            ),
          ),
          Text(
            "USD 23876,87",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "FontBold",
            ),
          ),
        ],
      )
    );
  }
}