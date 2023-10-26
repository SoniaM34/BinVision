import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificationsActivated = false;

  void toggleNotifications() {
    setState(() {
      notificationsActivated = !notificationsActivated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Réglages"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.grey,
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Position: 34000 - Montpellier",
                    style: TextStyle(
                      color: Colors.white, // Couleur du texte
                      fontSize: 16.0, // Taille de la police
                      fontFamily: 'arial', // Remplacez par le nom de la police
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Code pour gérer l'action de modification
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal), // Couleur de fond du bouton
                    ),
                    child: Text("Modifier"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0), // Ajout de la marge entre les deux bandeaux
            Container(
              color: Colors.grey,
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.white, // Couleur du texte
                      fontSize: 16.0, // Taille de la police
                      fontFamily: 'arial', // Remplacez par le nom de la police
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      toggleNotifications(); // Appelle la fonction pour activer/désactiver les notifications
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal), // Couleur de fond du bouton
                    ),
                    child: Text(notificationsActivated ? "Désactiver" : "Activer"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
