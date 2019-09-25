# doc-flutter
Pour les widgets

 1 -Placeholder()
Container(
              height: 100,
              width: 300,
              child: Placeholder(color: Colors.red,
              fallbackHeight: 40.0,fallbackWidth: 30.0, //définir un espace réservé avec hauteur= 40 et largeur =30 très utile en l'absence d'un container

              strokeWidth: 5,),

        ),

  //2- Wrap permet l'alignement de plusieurs elements l'un après l'autre
  Wrap(
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


     //3- PageView est un widget qui génère des pages défilables à l'écran et peut prendre plusieurs enfants.Il y'en a trois types que sont PageView,PageView.builder,PageView.custom
         PageView(
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
        derivées de PageView

          PageView.builder(
            itemCount: 15,
            itemBuilder: (context,position){
          return Container(child: Center(child: Text("bonjour ${position}")),);//genere
        })

    //4- Align permet de placer un widget à la position voulue sur l'écran.

    CAS 1:
       Container(color: Colors.blue,
            child:Align( //peut aussi être utilisé dans un Widget Stack.
              alignment:Alignment(-1,0.5), // Alignment(x,y);pour x et y allant de -1 à 1.0 étant le centre.
              child:Text("bonjour"),
            ),),
     CAS 2:
        Container(color: Colors.blue,
            child:Align( //peut aussi être utilisé dans un Widget Stack.
              alignment:Alignment.centerLeft, // en utilisant les proprietés predéfinies comme centerLeft,topCenter,center,bottomCenter ...
              child:Text("bonjour"),
            ),),

    // dismissible
    ListView.builder(
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

     usage de stack
Container(
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
      )
