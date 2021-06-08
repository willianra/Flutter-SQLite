import 'package:flutter/material.dart';
import 'package:flutter_sqlite/modelos/Diary.dart';
import 'package:flutter_sqlite/modelos/Page.dart';

class FormPage extends StatefulWidget {
Diary diary;
Pages page;
FormPage();
  @override
  State<StatefulWidget> createState() => FormPageState(page);
}

class FormPageState extends State<FormPage> {
  Pages page;
  FormPageState(this.page);
  TextEditingController ctrlDate=TextEditingController();
  TextEditingController ctrlTitle=TextEditingController();
  TextEditingController ctrlContent=TextEditingController();
  @override
  void initState() {
   if(page!=null){
     ctrlDate.text=page.date;
     ctrlTitle.text=page.title;
    ctrlContent.text=page.content;
   }else{
     ctrlDate.text=DateTime.now().toString().substring(0,11);
   }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller:ctrlDate ,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "FECHA"
                ),
                enabled: false,
                ),
              TextFormField(
                controller:ctrlTitle,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "TITULO"
                ),
                ),
              TextFormField(
                controller: ctrlContent,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "CONTENIDO"
                ),
                ),
                 TextButton(
           onPressed: save() ,
           child:  Text("")
           
         )

            ],
          ),
        ),
      ),
      
    );
  }
  save(){

  }
}