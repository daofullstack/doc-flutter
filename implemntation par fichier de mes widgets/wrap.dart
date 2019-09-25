import 'package:flutter/material.dart';

class Wrapn extends StatefulWidget {
  @override
  _WrapnState createState() => _WrapnState();
}

class _WrapnState extends State<Wrapn> {
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
                  child:   Wrap(
                    direction: Axis.vertical,
                    alignment:WrapAlignment.end ,
                    spacing: 10.0,
                    //runSpacing: 20.0,
                    children: <Widget>[
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.grey.shade800,
                          child: Text('AB'),
                        ),
                        label: Text('Aaron Burr'),
                      ),
                      Container(height: 40,width: 40,color: Colors.green,),
                      Container(height: 40,width: 40,color: Colors.red,),
                      Container(height: 40,width: 40,color: Colors.blue,),
                      Container(height: 40,width: 40,color: Colors.yellow,),
                      Container(height: 40,width: 40,color: Colors.green,),
                      Container(height: 40,width: 40,color: Colors.red,),
                    ],),

                )
            ),
          ],
        ),
      ),
    );
  }
}
