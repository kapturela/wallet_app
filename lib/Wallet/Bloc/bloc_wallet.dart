import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
// import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:sqflite/sqflite.dart';
import 'package:wallet_app/Shared/lib/database_helper.dart';
import 'package:wallet_app/Wallet/Models/wallets_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BlocWallet implements Bloc {
  final _walletModel = WalletsModel();
  Stream<bool> get exist => Stream.fromFuture(existWallet());

  Stream<bool> get isLoggedIn => Stream.fromFuture(autoLogIn());
  Future<bool> autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userEmail = prefs.getString('email');

    if (userEmail != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> existWallet() async {
    WalletsModel data = await _walletModel.getObject(1);
    if (data  == null) {
      return false;
    } else {
      return true;
    }

  }


  static String mnemonic() {
    return bip39.generateMnemonic();
  }

  Future<int> createWallet(String seed, String password) async{
    _walletModel.insertObject(seed, password);
    return await _walletModel.saveObject();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}