import 'package:flutter/material.dart';

typedef StringValue = String Function(String);

class kTextField extends StatefulWidget {

  final String label;
  final StringValue onValidator;
  final StringValue onKeyValue;
  final bool isPass;

  kTextField({Key key, @required this.label, @required this.onKeyValue, this.onValidator, this.isPass});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _kTextField();
  }

}

class _kTextField extends State<kTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Correo electrónico",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo)
            ),
            labelStyle: TextStyle(
                color: Colors.black87
            )
        ),
        // ignore: missing_return
        validator: widget.onValidator,
        onSaved: widget.onKeyValue,
      ),
    );
  }

}