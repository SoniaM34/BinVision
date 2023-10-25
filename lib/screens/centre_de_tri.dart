import 'package:flutter/material.dart';

class CentreDeTri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Centre de tri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Position : 34000 - Montpellier",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 16.0), // Espacement entre le texte et l'image
          Image.asset('assets/map.png'),
          SizedBox(height: 16.0), // Espacement entre l'image et les bandeaux
          Container(
            width: double.infinity, // Prend toute la largeur de la page
            color: Colors.grey, // Couleur de fond grise
            padding: EdgeInsets.all(16.0), // Espacement interne des bandeaux
            child: Center(
              child: Text(
                "Centre de tri 1\n3 avenue de la mairie\nOuvert, 8h - 19h",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
            height: 100.0, // Augmentation de la hauteur des bandeaux pour adapter les trois lignes
          ),
          SizedBox(height: 6.0), // Espacement entre les deux textes
          Container(
            width: double.infinity, // Prend toute la largeur de la page
            color: Colors.grey, // Couleur de fond grise
            padding: EdgeInsets.all(16.0), // Espacement interne des bandeaux
            child: Center(
              child: Text(
                "Centre de tri 2\n14 boulevard de la mer\nOuvert, 8h - 19h",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
            height: 100.0, // Augmentation de la hauteur des bandeaux pour adapter les trois lignes
          ),
        ],
      ),
    );
  }
}
