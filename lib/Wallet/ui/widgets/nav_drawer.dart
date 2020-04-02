import 'package:flutter/material.dart';
import 'package:wallet_app/Shared/Widgets/logo.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(32, 39, 101, 1)
            //other styles
          ),
          child:  Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Logo(height: 50, width:43, gray: true),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, left: 10),
                        child: Text(
                          "Kapturela",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "FontBold",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.input, color: Color.fromRGBO(229, 100, 33, 1)),
                        title: Text('Welcome', style: TextStyle(color: Colors.white, fontFamily: "FontRegular", fontSize: 17)),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Icon(Icons.verified_user, color: Color.fromRGBO(229, 100, 33, 1),),
                        title: Text('Profile', style: TextStyle(color: Colors.white, fontFamily: "FontRegular", fontSize: 17),),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings, color: Color.fromRGBO(229, 100, 33, 1)),
                        title: Text('Settings', style: TextStyle(color: Colors.white, fontFamily: "FontRegular", fontSize: 17)),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app, color: Color.fromRGBO(229, 100, 33, 1)),
                        title: Text('Logout', style: TextStyle(color: Colors.white, fontFamily: "FontRegular", fontSize: 17)),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}