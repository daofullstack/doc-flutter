import 'package:flutter/material.dart';
class placeholdern extends StatefulWidget {
  @override
  _placeholdernState createState() => _placeholdernState();
}

class _placeholdernState extends State<placeholdern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Placeholder"),),
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
                  child: Container(
                    height: 100,
                    width: 300,
                    child: Placeholder(color: Colors.red,
                      fallbackHeight: 40.0,fallbackWidth: 30.0, //définir un espace réservé avec hauteur= 40 et largeur =30 très utile en l'absence d'un container

                      strokeWidth: 5,),

                  ),

                )
            ),
          ],
        ),
      ),
    );
  }
}
