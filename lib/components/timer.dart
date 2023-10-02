import 'dart:async';

import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timeCounter = 5;
  void _startCountDown(){
    Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
       if(timeCounter > 0){
        timeCounter--;
        
       }  else{
        timer.cancel();
       }
      });
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(timeCounter > 0 ? timeCounter.toString(): "DONE"),
            MaterialButton(onPressed:_startCountDown ,child: Text("Count down"),)
          ],
        ),
      ),

    );
}
}