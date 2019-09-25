
import 'package:flutter/material.dart';
class Richtextn extends StatefulWidget {
  @override
  _RichtextnState createState() => _RichtextnState();
}

class _RichtextnState extends State<Richtextn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("align widget"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(height: 30,),
            Divider(),
            Expanded(
                flex: 5,
                child:Container(
                  padding: EdgeInsets.all(20.0),
                  child:
                  RichText(text: TextSpan(
                      style: DefaultTextStyle.of(context).style,children: <TextSpan>[
                    TextSpan(text: ("Sans le savoir, "),style: TextStyle(fontSize: 30,color: Colors.black,decoration: TextDecoration.none),),
                    TextSpan(text: ("vous avez peut-être sur votre ordinateur "),style: TextStyle(fontSize: 20,fontFamily:"arial",color: Colors.black,decoration: TextDecoration.none)),

                  ]),),
                )
            ),
          ],
        ),
      ),


    );
  }
}
