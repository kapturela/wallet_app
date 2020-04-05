import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class BlocUser implements Bloc {
  // ignore: close_sinks
  final _sessionStarted = StreamController<bool>();
  Stream<bool> get isLoggedIn => _sessionStarted.stream;

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userEmail = prefs.getString('email');

    if (userEmail != null) {
      _sessionStarted.sink.add(true);
    } else {
      _sessionStarted.sink.add(false);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }


}