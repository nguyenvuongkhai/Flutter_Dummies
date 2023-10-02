import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DRAWER"),
      elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue.shade300,
          child: ListView(
            children: [
              DrawerHeader(child: Center(child: Text("Hello"))),
              ListTile(
                title: Text("Page1"),
                leading: Icon(Icons.home),
              )
            ],
          ),
        ),
      ),

    );
  }
}
