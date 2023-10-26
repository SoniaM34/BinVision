import 'package:flutter/material.dart';

import '../screens/centre_de_tri.dart';
import '../screens/scan.dart';
import '../screens/setting.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.teal[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.restore_from_trash),
            icon: Icon(Icons.restore_from_trash_outlined),
            label: 'Centre de Tri',
          ),
          NavigationDestination(
            icon: Icon(Icons.photo_camera),
            label: 'Scan',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Réglages',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          child: CentreDeTri()
        ),
        Container(
          child: Scan()
        ),
        Container(
          child: Setting()
        ),
      ][currentPageIndex],
    );
  }
}