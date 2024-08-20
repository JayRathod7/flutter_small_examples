import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  String name;
  String number;
  String password;

  ContactPage(
      {super.key,
      required this.name,
      required this.number,
      required this.password});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "HONDA",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person_2, size: 30),
                SizedBox(width: 10),
                Text(
                  "${widget.name}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone, size: 30),
                SizedBox(width: 10),
                Text("${widget.number}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.lock, size: 30),
                SizedBox(width: 10),
                Text("${widget.password}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
