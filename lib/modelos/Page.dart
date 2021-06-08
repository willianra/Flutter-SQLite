import 'package:flutter_sqlite/BaseDatos/CRUD.dart';
import 'package:flutter_sqlite/BaseDatos/tabla.dart';

class Pages extends CRUD{
  int id;
  String date;
  String title;
  String content;
  int idDiary;

  Pages({this.id,this.date="",this.title="",this.content="",this.idDiary=0}):super (DBTable.PAGE);

  //de map a objet
  factory Pages.toObjet(Map<dynamic,dynamic>data){

    return (data!=null)?Pages(
      //clave valor
      id:data['id'],
      date: data['date'],
      title: data['title'],
      content: data['content'],
      idDiary: data['idDiary'],
    ):Pages();
  }
  Map<String,dynamic>toMap(){
    return {
      'id':this.id,
      'data':this.date,
      'title':this.title,
      'content':this.content,
      'idDiary':this.idDiary
    };
  }
  
  getList(parsed){
    return (parsed as List).map((map) => Pages.toObjet(map)).toList();
  }
}