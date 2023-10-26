import 'package:binvision/components/bottom_navigationbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const AccueilPage(),
    );
  }
}

class AccueilPage extends StatelessWidget {
  const AccueilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue sur BinVision"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/BV_icon.png'), // Remplacez 'assets/logo.png' par le chemin de votre image de logo
            ),
            Text("Bienvenue sur BinVision", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*Expanded(
                  child: Icon(Icons.location_on),
                ),*/
                Expanded(
                  child: Text("Activez la localisation", textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Text("ou", textAlign: TextAlign.center,),
                ),
              ],
            ),
            Text("Indiquez votre code postal",
              style: const TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Code postal'),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)), // Ajustez la taille ici
              ),
              onPressed: () {
                // Naviguer vers la page suivante
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigationBarApp()),
                );
              },
              child: Text("Suivant"),
            ),
          ],
        ),
      ),
    );
  }
}
