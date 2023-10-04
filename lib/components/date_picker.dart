import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
    DateTime? today = DateTime.now();
  void _handlePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate:DateTime(2000) , lastDate: DateTime(2025)).then((value) {setState(() {
    today = value;  
    });});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(today.toString()),
            GestureDetector(
              onTap: _handlePicker,
              child: Container(
                padding:EdgeInsets.all(10),
                child: Text("Save the date", style: TextStyle(color:Colors.white),),
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue.shade700,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}