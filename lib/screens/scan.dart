import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan"),
      ),
      body: const Center(
        child: Text(
          "Page Scan",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}