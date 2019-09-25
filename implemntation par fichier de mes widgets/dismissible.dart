import 'package:flutter/material.dart';

class Dismissiblen extends StatefulWidget {
  @override
  _DismissiblenState createState() => _DismissiblenState();
}

class _DismissiblenState extends State<Dismissiblen> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

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
                  child: Container(color: Colors.blue,
                    child:      ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];

                        return Dismissible(
                          // Each Dismissible must contain a Key. Keys allow Flutter to
                          // uniquely identify widgets.
                          key: Key(item),
                          // Provide a function that tells the app
                          // what to do after an item has been swiped away.
                          onDismissed: (direction) {
                            // Remove the item from the data source.
                            setState(() {
                              items.removeAt(index);
                            });

                            // Then show a snackbar.
                            Scaffold.of(context)
                                .showSnackBar(SnackBar(content: Text("$item dismissed")));
                          },
                          // Show a red background as the item is swiped away.
                          background: Container(color: Colors.red),
                          child: ListTile(title: Text('$item')),
                        );
                      },
                    ),
                )
            ),
            )],
        ),
      ),

    );
  }
}
