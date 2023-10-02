import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  double boxWidth = 100;
  double boxHeight = 100;
  var boxColor = Colors.blue;
  double boxX = -1;
  double boxY = -1;

  void changeSize() {
    setState(() {
      boxWidth = 300;
      boxHeight = 300;
    });
  }

  void changeColor(){
    setState(() {
      boxColor = Colors.red;
    });
    
  }

  void moveBox(){
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: moveBox,
        child: Center(
          child: AnimatedContainer(
            alignment: Alignment(boxX,boxY),
            duration: Duration(milliseconds: 1000),
            curve: Curves.bounceOut,
            child: Container(
               width: 100,
              height: 100,
              decoration: BoxDecoration(
                    color: Colors.pink,
                  borderRadius: BorderRadius.circular(20)),
            ),
             
            
          ),
        ),
      ),
    );
  }
}
