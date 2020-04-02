import 'package:flutter/material.dart';

class SaldoTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 110),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "USD 2.00",
            style: TextStyle(
                fontFamily: "FontBold",
                fontSize: 22
            ),

          ),
          Text(
              "Balance total en su billetera",
            style: TextStyle(
              fontFamily: "FontLight",
              fontSize: 12,
              color: Color.fromRGBO(229, 100, 33, 1)
            ),
          ),
        ],
      )
    );
  }

}