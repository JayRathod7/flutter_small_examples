import 'package:flutter/material.dart';

import 'detail_screen.dart';

//ignore: must_be_immutable
class DataListModel extends StatelessWidget {
  late List list;

  DataListModel({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.black12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(list: list, index: index)));
              },
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "${list[index]["imageurl"]}",
                      )),
                  SizedBox(width: 20),
                  Text(
                    "${list[index]["name"]}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        });
  }
}
