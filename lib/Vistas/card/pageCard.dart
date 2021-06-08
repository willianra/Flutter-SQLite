import 'package:flutter/material.dart';
import 'package:flutter_sqlite/modelos/Page.dart';

class PageCard extends StatelessWidget {
  Pages page;
  PageCard(this.page);
  @override
  Widget build(BuildContext context) {

    return Card(
      child: Row(children: <Widget>[
        Container(
          child: Icon(Icons.calendar_today),
          height: 100,
          width: 100,
        ),
        Flexible(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(page.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
                 ),
            ),
            ///fila 
            Row(
              children: <Widget>[
                Icon(Icons.access_time,color: Colors.pinkAccent,),
                Text(page.date,style: TextStyle(fontSize: 11),),

              ],
            )
          ],
        ))
      ],),
      
    );
  }
}