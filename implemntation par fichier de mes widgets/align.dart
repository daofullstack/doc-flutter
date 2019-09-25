import 'package:flutter/material.dart';

class Alignn extends StatefulWidget {
  @override
  _AlignnState createState() => _AlignnState();
}

class _AlignnState extends State<Alignn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  child: Container(color: Colors.blue,
                    child:Align( //peut aussi être utilisé dans un Widget Stack.
                      alignment:Alignment(-1,0.5), // Alignment(x,y);pour x et y allant de -1 à 1.0 étant le centre.
                      child:Text("bonjour"),
                    ),),
                )
            ),
          ],
        ),
      ),
    );
  }
}
