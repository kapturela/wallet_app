import 'package:wallet_app/Shared/lib/database_helper.dart';
import 'package:wallet_app/Shared/lib/database_object.dart';
import 'package:sqflite/sqflite.dart';

class WalletsModel extends DatabaseHelper implements DataBaseObject  {
  int id;
  String seed;
  String password;

  WalletsModel();

  Map<String,dynamic> toMap() {
    var map = <String, dynamic> {
      'id': id,
      'seed': seed,
      'password': password
    };

    return map;
  }

  WalletsModel.fromMap(Map<String, dynamic> map) {
    id= map['id'];
    seed = map['seed'];
    password= map['password'];
  }

  void insertObject(String seed, String password) {
    this.seed = seed;
    this.password = password;
  }

  @override
  Future<WalletsModel> getObject(int id) async {
    Database db = await this.database;
    List<Map> maps = await db.query('wallet',
        columns: ['id', 'seed', 'password'],
        where: "id = ?",
        whereArgs: [id] );

    if(maps.length > 0){
      return WalletsModel.fromMap(maps.first);
    }else{
      return null;
    }
  }

  @override
  Future<int> saveObject() async{
    Database db = await this.database;
    return await db.insert('wallet', toMap());
  }

}