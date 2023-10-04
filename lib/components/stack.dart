import 'package:flutter/material.dart';

class StackWidget
 extends StatelessWidget {
  const StackWidget
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            alignment: Alignment(-1,1),
            color: Colors.blue.shade300,
          child: Container(
            width:200,
            height:200,
            color:Colors.black45
          ),
          ),
      
        ],

      ),
    );
  }
}