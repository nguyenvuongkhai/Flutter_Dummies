import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key});
  @override
  Widget build(BuildContext context) {
final  pinkFont = TextStyle(fontSize: 30, fontStyle: FontStyle.italic);
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      body: Center(
        // The RichText widget displays text that uses multiple different styles. 
        child: RichText(text: TextSpan(
          children: [
            TextSpan(text: "Hello", style: pinkFont),
            TextSpan(text: " this is the first page but it is longer than you thought and you must know this line is created by RichTex", style: TextStyle()),
      
          ]
        )),
      ),
    );
  }
}