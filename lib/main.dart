import 'package:flutter/material.dart';
import 'screens/centre_de_tri.dart';

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
        primarySwatch: Colors.blue,
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
        title: Text("Accueil"), // Titre de la page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/BV_icon.png'),
            Text(
              "Active ta localisation",
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              "OU",
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              "Indique ton code postal",
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: () {
                // Naviguer vers la page suivante
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CentreDeTri()),
                );
              },
              child: Text("SUIVANT"),
            ),
          ],
        ),
      ),
    );
  }
}
