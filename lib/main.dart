import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:wallet_app/Wallet/Bloc/bloc_wallet.dart';
import 'package:wallet_app/User/ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Wallet',
        //home: Welcome(),
        home: LoginScreen(),
      ),
      bloc: BlocWallet(),
    );
  }
}
