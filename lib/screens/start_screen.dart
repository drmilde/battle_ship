import 'package:battle_ship/screens/init_screen.dart';
import 'package:battle_ship/screens/list_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'settings_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              height: 16,
            ),
            _buildButton(context, "PLAY", InitScreen()),
            SizedBox(
              height: 16,
            ),
            _buildButton(context, "SETTINGS", SettingsScreen()),
            SizedBox(
              height: 16,
            ),
            _buildButton(context, "PLAYERS", ListPlayerScreen()),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    color: Colors.lime,
                    child: Icon(Icons.speaker_outlined)
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    color: Colors.lime,
                    child: Icon(Icons.music_off),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        print(text);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        width: 300,
        height: 48,
        color: Colors.lime,
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.play(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
