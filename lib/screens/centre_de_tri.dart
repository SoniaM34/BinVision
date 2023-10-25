import 'package:flutter/material.dart';

class CentreDeTri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Centre de tri"),
      ),
      body: const Center(
        child: Text(
          "Page Centre de tri",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}