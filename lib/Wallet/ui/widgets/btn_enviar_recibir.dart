import 'package:flutter/material.dart';

class BtnEnviarRecibir extends StatefulWidget {

  final String titulo;
  BtnEnviarRecibir({Key key, @required this.titulo});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BtnEnviarRecibir();
  }

}

class _BtnEnviarRecibir extends State<BtnEnviarRecibir> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Column(
              children: <Widget>[
                Icon(Icons.call_made, color: Color.fromRGBO(229, 100, 33, 1)),
                Text('Enivar',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(229, 100, 33, 1),
                    fontFamily: "FontNormal"
                  )
                ),
              ],
            ),
            onPressed: () { /* ... */ },
          ),
          FlatButton(
            child: Column(
              children: <Widget>[
                Icon(Icons.call_received, color: Color.fromRGBO(229, 100, 33, 1)),
                Text('Recibir',
                    style: TextStyle(
                      color: Color.fromRGBO(229, 100, 33, 1),
                      fontSize: 10,
                      fontFamily: "FontNormal"
                    )
                ),
              ],
            ),
            onPressed: () { /* ... */ },
          ),
          FlatButton(
            child: Column(
              children: <Widget>[
                Icon(Icons.format_list_bulleted, color: Color.fromRGBO(229, 100, 33, 1),),
                Text('Transacciones',
                    style: TextStyle(
                      color: Color.fromRGBO(229, 100, 33, 1),
                        fontSize: 10,
                        fontFamily: "FontNormal"
                    )
                ),
              ],
            ),
            onPressed: () { /* ... */ },
          ),
        ],
      ),
    );
  }

}