import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  // Create the animation controller
  late AnimationController _animationController;

  // Initialize the animation controller
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

    bool isFirstime = false;
  void _handleGesture(){
    if(isFirstime == false){
      _animationController.forward();
      isFirstime = true;
    }else{
      _animationController.reverse();
       isFirstime = false;
    }
    
  }

  // Method for when user taps icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _handleGesture,
          child: AnimatedIcon(
            icon: AnimatedIcons.add_event,
            progress: _animationController,
            size: 150,
          ),
        ),
      ),
    );
  }
}
