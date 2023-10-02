import 'package:all_widgets/components/alert_dialog.dart';
import 'package:all_widgets/components/animated_widget.dart';
import 'package:all_widgets/components/bottom_navbar.dart';
import 'package:all_widgets/components/container_widget.dart';
import 'package:all_widgets/components/drawer.dart';
import 'package:all_widgets/components/gesture_detector.dart';
import 'package:all_widgets/components/media_query.dart';
import 'package:all_widgets/components/page_view.dart';
import 'package:all_widgets/components/sliver_appbar.dart';
import 'package:all_widgets/components/tabbar.dart';
import 'package:all_widgets/components/text_styling.dart';
import 'package:all_widgets/components/timer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageViewer(),
        // theme: ThemeData(
        //   textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 150)),
        // )
        );
  }
}
