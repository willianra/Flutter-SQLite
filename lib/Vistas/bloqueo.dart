import 'package:flutter/material.dart';
import 'package:flutter_sqlite/Page/HomePage.dart';
import 'package:flutter_sqlite/main.dart';
import 'package:flutter_sqlite/modelos/Diary.dart';

class Login extends StatefulWidget {
  
  List<Diary>diaries;
  Login(this.diaries);
  @override
  State<StatefulWidget>createState()=>LoginState(this.diaries);
}
class LoginState extends State<Login> {
List<Diary>diaries;
LoginState(this.diaries);
bool isNewDiary=false;
TextEditingController ctrlType=TextEditingController();
TextEditingController ctrlCode=TextEditingController();
Diary dropDownValue=Diary();
@override
void initState(){
  isNewDiary=diaries==null;
  dropDownValue=diaries[0];
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Visibility(
          visible: !isNewDiary,
          child: dropdownButton(),
        ),
        Visibility(
          visible: isNewDiary,
          child: TextFormField(
            controller: ctrlType,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "tipo Diario"
            ),
          ),
        ),
        TextFormField(
          controller: ctrlType,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Codigo",
          ),
        ),
       TextButton(
         onPressed: isNewDiary?save:unlock,
         child: Text(
          isNewDiary?"Guardar":"Desbloquear",
           style: TextStyle(color: Colors.white,fontSize: 13),
           
         ),
         
       )

      ],
    );
  }
  dropdownButton(){
    return DropdownButton<Diary>(
      onChanged:onChangeDiary ,
      value:dropDownValue,
      icon:Icon(Icons.arrow_drop_down),
      items: diaries.map<DropdownMenuItem <Diary>>((Diary value){
        return DropdownMenuItem<Diary>(
          value: value,
          child: Text(value.type),
        );
      }).toList()
    );
  }
  onChangeDiary(Diary diary){
    setState(() {
          this.dropDownValue=diary;
        });
  }
  save(){
    Diary diary= Diary(type: ctrlType.text,enterCode: ctrlCode.text).save();
    if(diary!=null){

    }

  }
  unlock(){

  }
  goHome(Diary diary){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(diary)));
  }
}