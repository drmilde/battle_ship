import 'package:battle_ship/screens/game_screen.dart';
import 'package:battle_ship/widgets/box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> spielfeld = [];

    spielfeld.add(
      Container(
        width: 300,
        height: 300,
        color: Colors.lightBlue,
      ),
    );

    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < 10; y++) {
        // was machen wir hier ?
        spielfeld.add(Positioned(
          left: x * 30,
          top: y * 30,
          child: BoxWidget(),
        ));
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 148,
            ),
            Text(
              "Battleships",
              style: GoogleFonts.play(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: spielfeld,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  print("Hallo, Welt!");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GameScreen()));
                },
                child: Text("Play"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
