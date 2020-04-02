import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
// import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:wallet_app/Wallet/Models/wallets_model.dart';

class BlocWallet implements Bloc {
  final _walletModel = WalletsModel();
  final _existeWallet = StreamController<bool>();
  Stream<bool> get exist => _existeWallet.stream;
  void existWallet() {
    var data = _walletModel.getObject(1);
    print(data);
    print("la data de arriba");
    if (data  == null) {
      _existeWallet.sink.add(false);
    } else {
      print("si tiene");
      _existeWallet.sink.add(true);
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