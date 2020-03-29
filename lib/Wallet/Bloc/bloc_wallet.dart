import 'dart:async';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
// import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bip39/bip39.dart' as bip39;

class BlocWallet implements Bloc {

  final _blocController = StreamController<int>();

  Stream<int> get minhaStream => _blocController.stream;

  String mnemonic() {

    return bip39.generateMnemonic();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}