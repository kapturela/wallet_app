import 'package:flutter/material.dart';
import 'package:wallet_app/Wallet/ui/screens/wallet_screen.dart';

class TabBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBar();
  }

}

class _TabBar extends State<TabBar> {
  @override
  Widget build(BuildContext context) {
    int indexTap = 0;
    final List<Widget> widgetsChildren = [
      WalletScreen(),
      WalletScreen(),
      WalletScreen()
    ];

    void onTapTapped(int index){

      setState(() {
        indexTap = index;
      });

    }

    return
      Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                ),
              ]
          ),
        ),
      );
  }

}