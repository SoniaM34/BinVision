import 'package:flutter/material.dart';


class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan"),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: <Widget>[
          // Image de fond
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/scan.png'),
                fit: BoxFit.cover, // Ajuste l'image pour couvrir toute la page
              ),
            ),
          ),
          Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }
}
