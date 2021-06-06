import 'package:flutter_sqlite/BaseDatos/tabla.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB{
  String nombre='Usuarios';
  int version=1;
  //conexion
  Future<Database>open() async{
    String path = join(await getDatabasesPath(),nombre);
    openDatabase(
      path,
      version: version,
      readOnly: true,
      onConfigure: onConfigure,
      onCreate: onCreate
    ) ;
  }
  onCreate( Database db,int version){
    DBTable.TABLES.forEach((script) async => await db.execute(script));

  }

  onConfigure(Database db)async{
    db.execute('PRAGMA foreing_keys = ON');

    
  }
}