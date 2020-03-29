import 'package:flutter/material.dart';

class Crypto extends StatefulWidget {

  final String cryptoName;
  final String cryptoSymbol;

  Crypto(this.cryptoName, this.cryptoSymbol);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Crypto();
  }

}

class _Crypto extends State<Crypto> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black26,
          )
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 38,
            width: 38,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/"+widget.cryptoSymbol+".png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            widget.cryptoSymbol.toUpperCase() +"\n"+ widget.cryptoName ,
            style: TextStyle(
                fontSize: 16,
                fontFamily: "FontRegular",
                color: Colors.black87
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 120),
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: Color.fromRGBO(46, 57, 136, 0.6),
              activeColor: Color.fromRGBO(32, 39, 101, 1),
            ),
          )
        ],
      ),
    );
  }

}