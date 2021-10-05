import 'package:battle_ship/screens/hit_screen.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GameScreen"),
      ),
      body: Container(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                print("Hallo, Welt!");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HitScreen()));
              },
              child: Text("Shoot"),
            ),
          )),
    );
  }
}
