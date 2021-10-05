import 'package:flutter/material.dart';

class BoxWidget extends StatefulWidget {
  BoxWidget({Key? key}) : super(key: key);

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  double width = 30;
  double height = 30;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print ("outch");

        setState(() {
          isClicked = !isClicked;
        });

      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isClicked ? Colors.red: Colors.black12,
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
