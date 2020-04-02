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
      margin: EdgeInsets.only(top: 10, right: 10),
      height: 280,
      width: 320,
      padding: EdgeInsets.all(20),
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
                height: 38,
                width: 38,
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
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          getSaldo(),
          Charts(),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: (
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  BtnEnviarRecibir(titulo: "Enviar"),
                  BtnEnviarRecibir(titulo: "Recibir",)
                ],
              )
            ),
          )
        ],
      ),
    );
  }

  Widget getSaldo() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "2.234612985",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
          ),
          Text(
            "USD 23876,87",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "FontBold",
            ),
          ),
        ],
      )
    );
  }
}