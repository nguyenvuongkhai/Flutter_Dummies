import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
  const SliverBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text("SLIVER APP BAR"),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(background: Container(color: Colors.purple),),
            // floating: true,
            pinned: true,
          ),
          // sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Container(
                  height:200,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Container(
                  height:200,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Container(
                  height:200,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}