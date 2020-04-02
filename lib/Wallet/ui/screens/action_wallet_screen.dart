import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/background_screen.dart';

class ActionWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(32, 39, 101, 1),
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                      "Recibir",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "FontNormal",
                      ),
                    )
                ),
                Tab(
                  child: Text(
                    "Saldo",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "FontNormal",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "FontNormal",
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'Bitcoin',
              style: TextStyle(
                fontFamily: "FontNormal",
                fontSize: 18,
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              BackgroundScreen(),
              TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}