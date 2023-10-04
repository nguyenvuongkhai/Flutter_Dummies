import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
    TimeOfDay today = TimeOfDay.now();
  void _handlePicker(){
   showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {setState(() {
     today = value!;
   });})
   
    ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(today.format(context).toString()),
            GestureDetector(
              onTap: _handlePicker,
              child: Container(
                padding:EdgeInsets.all(10),
                child: Text("Save the time", style: TextStyle(color:Colors.white),),
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue.shade700,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}