import 'package:all_widgets/posts/mypost1.dart';
import 'package:all_widgets/posts/mypost2.dart';
import 'package:all_widgets/posts/mypost3.dart';
import 'package:all_widgets/posts/mypost4.dart';
import 'package:flutter/material.dart';

class PageViewer extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          MyPost4(),
        ],
      ),
    );
  }
} 