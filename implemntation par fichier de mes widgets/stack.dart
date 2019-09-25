import 'package:flutter/material.dart';

class Stackn extends StatefulWidget {
  @override
  _StacknState createState() => _StacknState();
}

class _StacknState extends State<Stackn> {
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
                  child:  Container(
                    color: Colors.white,
                    child: Stack(
                      overflow: Overflow.clip,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            color: Colors.blueGrey,
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),

                        Container(
                          color: Colors.red,
                          height: 750,
                          width: 300,
                        ),


                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            width: 200,
                          ),
                        ),
                        Positioned(
                          top: 50,
                          child: Container(
                            color: Colors.black,
                            height: 600,
                            width: 200,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                        ),
                      ],
                    ),
                  ),

                )
            ),
          ],
        ),
      ),
    );
  }
}
