import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void indexChanged(index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages =[
    Center(child: Text("Page1")),
    Center(child: Text("Page2")),
    Center(child: Text("Page3")),
    Center(child: Text("Page4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:_currentIndex ,
        onTap: (index) => indexChanged(index) ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "post"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user")
        ],
      ),
    );
  }
}
