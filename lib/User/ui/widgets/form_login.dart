import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/ktext_field.dart';
import 'package:wallet_app/Shared/Widgets/button_primary.dart';

class FormLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FormLogin();
  }

}

class _FormLogin extends State<FormLogin > {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _pass;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          kTextField(label: "Correo Electrñonico", onValidator: validateEmail,
              // ignore: missing_return
            onKeyValue: (String val) {
              _email = val;
            }
          ),
          kTextField(label: "Contraseña", onValidator: validatePassword,
            isPass: true,
            // ignore: missing_return
            onKeyValue: (String val) {
              _pass = val;
            },
          ),
          ButtonPrimary(titleButton: "Ingresar", onPressed: _setLogin, top: 100)
        ],
      ),
    );
  }

  void _setLogin() {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Processing Data')));
  }

  String validatePassword(String value) {
    if (value.length < 8)
      return 'La contraseña es de al menos 8 caracteres';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Ingrese un email valido';
    else
      return null;
  }

}