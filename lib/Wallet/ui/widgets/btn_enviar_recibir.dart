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
    return InkWell(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(229, 100, 33, 1),
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: Text(
          widget.titulo,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      )
    );
  }

}