import 'package:flutter/material.dart';

class MediaQueryMethod extends StatelessWidget {
  const MediaQueryMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade500,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Height " + MediaQuery.of(context).size.height.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                  Text(
                  "Width " + MediaQuery.of(context).size.width.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                  Text(
                  "AspecRatio " + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2),
                  style: TextStyle(fontSize: 30),
                ),
                  Text(
                  "Orientation " + MediaQuery.of(context).orientation.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ));
  }
}
