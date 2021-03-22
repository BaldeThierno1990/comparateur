import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Produits'),
                Tab(
                  text: 'Details',
                ),
                Tab(text: 'Liste'),
              ],
            ),
            title: Text('Mon Comparateur'),
          ),
          body: TabBarView(
            children: [FirstScreen(), SecondScreen(), ThirdScreen()],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2quYr2AruoKExDNzVZ3CouH0-TTlXGsI_Tw&usqp=CAU"),
              Card(
                child: Text(
                  'Vous n\'avez rien scanné',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Card(
                  child: Text(
                'Cliquez sur le bouton ci-dessous pour commencer',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SecondScreen();
                  }));
                },
                child: Text(
                  "Scanner un produit",
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    color: Colors.blue,
                  ),
                ),
              )
            ]))));
  }
}

// ------------------Page de detils
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
//

                          Image.network(
                            "https://lehub.laposte.fr/sites/default/files/styles/1020x575/public/visuel_principal/tendance/tdm-juin19-leadersite.jpg?itok=oDTnvVAm",
                          ),

                          Image.network(
                            'https://www.jequilibre.fr/wp-content/uploads/2019/09/nutri-score.png',
                            width: 70.0,
                          ),

                          Card(
                            child: Text(
                              'Barres Glacées Coeur Croustillant',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                          Card(
                            child: Text("Code-barres: 5000159484695",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Card(
                            child: Text("Quantité: 205,2g/258,6 ml",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Card(
                            child: Text("Vendu en : France",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),

                          Card(
                              child: Text(
                            'Ingredients: sucre, lait écrémé, sirop de glucose, crème légère(lait),eau, lait ecremé Ingredients: sucre, lait écrémé, sirop de glucose, crème légère(lait),eau, lait ecremé, Ingredients: sucre, lait écrémé, sirop de glucose, crème légère(lait),eau, lait ecremé',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )),
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Details();
                              }));
                            },
                            child: Text(
                              "Retourner à la page de scannage",
                              style: TextStyle(
                                fontFamily: 'JosefinSans',
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ])))));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
//

//

              Image.network(
                "https://lehub.laposte.fr/sites/default/files/styles/1020x575/public/visuel_principal/tendance/tdm-juin19-leadersite.jpg?itok=oDTnvVAm",
              ),

              Card(
                child: Text(
                  'Fruit Bio',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Card(
                  child: Text(
                'Ingredients: Sucre, lait écremé, sirop de glucose, avec des fruits pour renforcer votre vitamine. )',
                style: TextStyle(fontSize: 15.0),
              )),
              Image.network(
                "https://lehub.laposte.fr/sites/default/files/styles/1020x575/public/visuel_principal/tendance/tdm-juin19-leadersite.jpg?itok=oDTnvVAm",
              ),
              Card(
                child: Text(
                  'Fruit Bio',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Card(
                  child: Text(
                'Ingredients: Sucre, lait écremé, sirop de glucose, avec des fruits pour renforcer votre vitamine. )',
                style: TextStyle(fontSize: 15.0),
              )),
            ]))));
  }
}

class Mots extends SecondScreen {
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 20.0);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
              text: 'ingredients: ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: 'Timmy'),
        ],
      ),
    );
  }
}
