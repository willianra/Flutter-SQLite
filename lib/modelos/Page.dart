import 'package:flutter_sqlite/BaseDatos/CRUD.dart';
import 'package:flutter_sqlite/BaseDatos/tabla.dart';

class Page extends CRUD{
  int id;
  String date;
  String title;
  String content;
  int idDiary;

  Page({this.id,this.date="",this.title="",this.content="",this.idDiary=0}):super (DBTable.PAGE);

  //de map a objet
  factory Page.toObjet(Map<dynamic,dynamic>data){

    return (data!=null)?Page(
      //clave valor
      id:data['id'],
      date: data['date'],
      title: data['title'],
      content: data['content'],
      idDiary: data['idDiary'],
    ):Page();
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
    return (parsed as List).map((map) => Page.toObjet(map)).toList();
  }
}