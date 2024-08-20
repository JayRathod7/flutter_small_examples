import 'package:flutter/material.dart';

import 'List_ex_2.dart';
import 'Model/gridmodel.dart';

class GridViewEx extends StatefulWidget {
  const GridViewEx({super.key});

  @override
  State<GridViewEx> createState() => _GridViewExState();
}

class _GridViewExState extends State<GridViewEx> {
  List<GridModel> model = [
    GridModel(icon: Icons.schedule, title: "Memories"),
    GridModel(icon: Icons.bookmark, title: "Saved"),
    GridModel(icon: Icons.groups, title: "Groups"),
    GridModel(icon: Icons.video_library, title: "Video"),
    GridModel(icon: Icons.add_business, title: "Marketplace"),
    GridModel(icon: Icons.group, title: "Friends"),
    GridModel(icon: Icons.newspaper, title: "Feeds"),
    GridModel(icon: Icons.emoji_events, title: "Events"),
    GridModel(icon: Icons.face, title: "Avatars"),
    GridModel(icon: Icons.card_giftcard, title: "Birthdays"),
    GridModel(icon: Icons.sensor_occupied, title: "Crisis Response"),
    GridModel(icon: Icons.star, title: "Finds"),
    GridModel(icon: Icons.sports_esports, title: "Gaming"),
    GridModel(icon: Icons.reviews, title: "Messenger Kids"),
    GridModel(icon: Icons.layers, title: "Pages"),
    GridModel(icon: Icons.movie, title: "Reels"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Grid View"),
        actions: [
          IconButton(
              icon: Icon(Icons.navigate_next_outlined),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListEx2()));
              })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: (1 / .4)),
          itemBuilder: (context, index) {
            return Container(
              // padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              padding: EdgeInsets.only(left: 14, top: 10),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    model[index].icon,
                    size: 30,
                  ),
                  SizedBox(height: 4),
                  Text(
                    model[index].title,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            );
          },
          itemCount: 16,
        ),
      ),
    );
  }
}
