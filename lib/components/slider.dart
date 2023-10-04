import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(_currentValue.toStringAsFixed(2)),
          ),
          Slider(
              value: _currentValue,
              min: 0,
              max: 20,
            
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              }),
        ],
      ),
    );
  }
}
