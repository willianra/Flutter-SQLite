import 'package:flutter/material.dart';
import 'package:flutter_sqlite/Vistas/bloqueo.dart';
import 'package:flutter_sqlite/modelos/Diary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
            body: FutureBuilder<List<Diary>>(
          future: Diary().getDiaries(),
          initialData: List(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return (snapshot.connectionState == ConnectionState.done)
                ? Login(snapshot.data)
                : CircularProgressIndicator();
          },
        )),
      ),
    );
  }
}
