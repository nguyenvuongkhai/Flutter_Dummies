import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
            title: Text("APP BAR"),
          
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home,
                 color: Colors.blue),
                
                
              ),
              Tab(
                icon: Icon(Icons.settings,
                color: Colors.blue,
                ),
                
                
              ),
              Tab(
                icon: Icon(Icons.person,
                color: Colors.blue
                ),
                
                
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text("Tab 1"),
                  ),
                ),
                 Container(
                  child: Center(
                    child: Text("Tab 2"),
                  ),
                ),
                 Container(
                  child: Center(
                    child: Text("Tab 3"),
                  ),
                ),
              ]),
            )
          ],
          
        ),
        ),
        
        );
  }
}
