import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wallet_app/Wallet/ui/screens/home_screen.dart';

class CopertinoNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.indigo),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add, color: Colors.deepOrange),
                    title: Text(""),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.security, color: Colors.indigo),
                    title: Text("")
                ),
              ]
          ),
          // ignore: missing_return
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => Home(),
                );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => Home(),
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => Home(),
                );
            }
          }
        )
    );
  }

}