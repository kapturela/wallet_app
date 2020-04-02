import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';
import 'package:wallet_app/Wallet/Bloc/bloc_wallet.dart';
import 'package:wallet_app/Cryptos/ui/screens/list_cryptos.dart';

class CreateWallet extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return _CreateWallet();
  }

}

class _CreateWallet extends State<CreateWallet> {
  final BlocWallet blocWallet = BlocWallet();
  final String seed = BlocWallet.mnemonic();
  bool _isChecked = false;


  final controllerTextPass = TextEditingController();

  @override
  void dispose() {
    // Limpia el controlador cuando el Widget se descarte
    controllerTextPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
        title: Text(
          "CREAR UNA BILLETERA",
          style: TextStyle(
            fontFamily: "Fontbold",
            fontSize: 14
          ),
        ),
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
                _Mnemonic(seed),
                InputPassword(),
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Ha resguardado la frase de recuperación?",
                        style: TextStyle(
                          fontFamily: "FontNormal"
                        ),
                      ),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                          });
                        },
                      )
                    ],
                  )

                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: next,
        label: Text('Continuar'),
        icon: Icon(Icons.navigate_next),
        backgroundColor: Color.fromRGBO(32, 39, 101, 1),
      ),
    );
  }

  Widget _Mnemonic(String _seed) {
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
        _seed,
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
          fontFamily: "FontNormal",
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget InputPassword() {

    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.only(top: 30),
      child: TextField(
        controller: controllerTextPass,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contraseña para autorizar retiros',
        ),
      ),
    );
  }

  void next() async{
    if(!_isChecked) {
      shwowMessage("Confirme que usted realizó el resguardado su frase de recuperación.");
      return;
    }
    if(controllerTextPass.text.trim() == "") {
      shwowMessage("Se recomienda que cree una contraseña para autorizar retiros de su billetera.");
    }
    var id = await blocWallet.createWallet(seed, controllerTextPass.text.trim());
    if(id > 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListCryptos()),
      );
    }
  }

  shwowMessage(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Crear Wallet"),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text("Aceptar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }

}