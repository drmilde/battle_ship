import 'package:battle_ship/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 16,
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.network("https://publicfiles.studysmarter.de/university_logos/Hochschule_Fulda.jpg"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://publicfiles.studysmarter.de/university_logos/Hochschule_Fulda.jpg")
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 250,
              height: 16,
              child: LinearProgressIndicator(),
            ),
            SizedBox(
              height: 160,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  print("Hallo, Welt!");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartScreen()));
                },
                child: Text("weiter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
