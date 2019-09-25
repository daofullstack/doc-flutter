import 'package:flutter/material.dart';

class Draggablen extends StatefulWidget {
  @override
  _DraggablenState createState() => _DraggablenState();
}

class _DraggablenState extends State<Draggablen> {
  Color MyColor=Colors.black12;
  List<Color> color=[
    Colors.orange,
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.yellow,
  ];
  List<Color> stateColor=[];
  List<List<double >> state=[
    [300,400],
    [100,250],
    [50,75],
  ];
  bool myS=false;
  Map<String, List<Color> > pays= {
    "CI":[Colors.orange,Colors.white,Colors.green,],
    "FR":[Colors.blue,Colors.white,Colors.red,],

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DRAGGABBLE"),
          actions: <Widget>[
            Switch(inactiveThumbColor: Colors.white,value: myS, onChanged: (bool){
              setState(() {
                myS=bool;
              });
            })
          ],
        ),
        body:Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child:GridView.builder(itemBuilder: (context,i){
                  //pour retourner notre widget
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: Draggable<Color>(

                      child: Container(height: 60,width: 60,color: color[i],) ,
                      feedback: Container(height: 60,width: 60,color: color[i],) ,
                      data: color[i],
                      childWhenDragging: Container(height: 60,width: 60,color: color[i],),
                    ),
                  );
                },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                  itemCount:color.length ,
                ),
              ),
              Expanded(flex: 3,child: Container(
                margin: EdgeInsets.only(top: 10,left:10,bottom: 80,right: 10 ),
                child: DragTarget<Color>(
                  builder:(context,ListColorAccepted,ListColorRejected){

                    return  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: <Widget>[
                        con(
                          170,
                          110,
                          color[0],
                        ),

                        con(
                          170,
                          110,
                          color[1],
                        ),
                        con(
                          170,
                          110,
                          color[2],
                        ),
                      ],
                    );
                  },
                  onWillAccept: (data){
                    return true;
                  },
                  onAccept: (data){
                    setState(() {
                      MyColor=data;
                    });
                  },
                ),
              ),)
            ],
          ),
        )

    );

  }
  Widget con(double height, double width, Color color){
    return Container(height: height, width: width, color: color, margin: EdgeInsets.all(2.0),);

  }
}
