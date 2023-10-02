import 'package:flutter/material.dart';

class GestureDetect extends StatefulWidget {
  const GestureDetect({super.key});

  @override
  State<GestureDetect> createState() => _GestureDetectState();
}

class _GestureDetectState extends State<GestureDetect> {
  int timeCounter = 0;

  void increaseTime() {
    setState(() {
      timeCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('YOU SMASH THE BUTTON ' + timeCounter.toString() + ' TIMES'),
            GestureDetector(
              onTap: () => increaseTime(),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Text("SMASH ME"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
