 import 'package:flutter/material.dart';
import 'package:flutter_sqlite/Page/formPage.dart';
import 'package:flutter_sqlite/Vistas/card/pageCard.dart';
import 'package:flutter_sqlite/modelos/Diary.dart';
import 'package:flutter_sqlite/modelos/Page.dart';
 

class MyHomePage extends StatefulWidget {
  Diary diary;
MyHomePage(this.diary);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<Pages> pages;
  void goForm() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FormPage()));
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
 
        title: Text("vienvenido${widget.diary.type}"),
      ),
        body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: goForm,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  getListVie(){
    return ListView.builder(
      itemCount: pages.length,
      itemBuilder: (BuildContext context,int index){
      return PageCard(pages[index]);
    });
  }
}
