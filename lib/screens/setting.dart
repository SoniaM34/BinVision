import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reglage"),
      ),
      body: const Center(
        child: Text(
          "Page Reglage",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}