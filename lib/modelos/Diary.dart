import 'package:flutter_sqlite/BaseDatos/CRUD.dart';
import 'package:flutter_sqlite/BaseDatos/tabla.dart';

class Diary extends CRUD{
  int id;
  String type;
  String enterCode;

  Diary({this.id,this.type="",this.enterCode=""}):super (DBTable.DIARY);

  //de map a objet
  factory Diary.toObjet(Map<dynamic,dynamic>data){

    return (data!=null)?Diary(
      //clave valor
      id:data['id'],
      type: data['type'],
      enterCode: data['enterCode']
    ):Diary();
  }
  Map<String,dynamic>toMap(){
    return {
      'id':this.id,
      'type':this.type,
      'enterCode':this.enterCode
    };
  }
  
  getList(parsed){
    return (parsed as List).map((map) => Diary.toObjet(map)).toList();
  }
}