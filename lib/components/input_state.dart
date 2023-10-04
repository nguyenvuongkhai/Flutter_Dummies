

import 'package:flutter/material.dart';

class InputState extends StatefulWidget {

   InputState({super.key});

  @override
  State<InputState> createState() => _InputStateState();
}

class _InputStateState extends State<InputState> {
  final _textController = TextEditingController();

  String viewer = '';

   void _updateText(){
    setState(() {
      viewer = _textController.text;
    });
    
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: Text(viewer, style: TextStyle(fontSize: 50),),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Which one should you text her ?",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed:(){_textController.clear();},
                  )),
                  controller: _textController,
            ),
            MaterialButton(onPressed: _updateText, child: Text("Post"),color: Colors.blue.shade300,)
          ],
        ),
      ),
    );
  }
}
