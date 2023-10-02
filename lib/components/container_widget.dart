import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  // Container Widget
  // Expanded only can use inside column or row widget
  // Column and Row
  // These are the basic widget so I dont write it on detail, hover on the widget name to check their properties
    // Column(
    //   children: [
    //     Expanded(
    //       child: Container(
    //       width: 100,
    //       color: Colors.red.shade300,
    //       padding:EdgeInsets.all(20) ,
    //       ),
    //     ),
    //      Expanded(
    //        child: Container(
    //              width: 100,
    //              height: 20,
    //              color: Colors.blue.shade300,
    //              padding:EdgeInsets.all(20) ,
    //              ),
    //      ),
    //   ],
    // );

  // Listview and Builder
  //   Scaffold(
  //     body: ListView.builder( 
  //     itemCount: 5,
  //     itemBuilder: (context, index) {
  //       return Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Container(
  //               // padding:EdgeInsets.all(8.0),
  //               height: 200,
  //               color:Colors.blue.shade700,
  //             ),
  //       );
  //     },
  //     ),
  //   );

  // Clipprect widget just like borderRadius but...

  // Image.asset help import images and fit image with background

  // Gridview and Builder
  // Scaffold(
  //   // Gridview
  //   body: GridView.builder(
  //    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
  //    itemBuilder: (context, index) {
  //      return  Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Container(width: 200,color: Colors.red.shade500,),
  //     );
      
  //    },
  //   )
  // );

  // Gesture detector
} 
}

