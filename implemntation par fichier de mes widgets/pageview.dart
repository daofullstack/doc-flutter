import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PageView"),),
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
                  child:          PageView(
                    physics: BouncingScrollPhysics(),
                    pageSnapping: false, //permet d'arrêter le defilement de la page partout ou on le souhaite
                    //scrollDirection: Axis.vertical, // Axis.horizontal par défaut et designe le sens ou l'orientation du défilement
                    children: <Widget>[
                      Container(color: Colors.blue,
                        child:Align( //peut aussi être utilisé dans un Widget Stack.
                          alignment:Alignment.centerLeft, // Alignment(x,y);pour x et y allant de -1 à 1.0 étant le centre.
                          child:Text("bonjour"),
                        ),),
                      Container(color: Colors.yellow,
                        child:Align(
                          alignment:Alignment.center,
                          child:Text("Et"),
                        ),),
                      Container(color: Colors.red,
                        child:Align(
                          alignment:Alignment.bottomCenter,
                          child:Text("bonne journée "),
                        ),),
                      Container(color: Colors.green,
                        child:Align(
                          alignment:Alignment.topCenter,
                          child:Text("à toi ."),
                        ),),
                    ],
                  ),

                )
            ),
          ],
        ),
      ),
    );
  }
}
