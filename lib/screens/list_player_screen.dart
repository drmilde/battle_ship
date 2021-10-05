import 'package:flutter/material.dart';

class ListPlayerScreen extends StatelessWidget {
  ListPlayerScreen({Key? key}) : super(key: key);

  List<String> spieler = [
    "Jan-Torsten",
    "Elisabeth",
    "Rebecca",
    "Sven",
    "Antonia",
    "Jakob",    "Jan-Torsten",
    "Elisabeth",
    "Rebecca",
    "Sven",
    "Antonia",
    "Jakob",
    "Jan-Torsten",
    "Elisabeth",
    "Rebecca",
    "Sven",
    "Antonia",
    "Jakob",
    "Jan-Torsten",
    "Elisabeth",
    "Rebecca",
    "Sven",
    "Antonia",
    "Jakob",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              height: 48,
              color: Colors.lime,
              child: Center(child: Text(spieler[index])),
            ),
          );
        },
        itemCount: spieler.length,
      )),
    );
  }
}
