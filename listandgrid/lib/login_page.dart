import 'package:flutter/material.dart';
import 'package:listandgrid/List_view_ex_1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU"),
              radius: 40,
            ),
            const SizedBox(height: 10),
            const Text(
              "Jay Rathod",
              style: TextStyle(
                  fontFamily: "PlaywriteHR",
                  fontSize: 34,
                  color: Colors.white,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10),
            const Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 4,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            const Divider(
              color: Colors.white30,
              indent: 150,
              height: 1,
              endIndent: 150,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                  hintText: "+91 92322 92322",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.green,
                  )),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Example@gmail.com",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.green,
                  )),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.symmetric(horizontal: 200),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewEx1()));
              },
              child: const Text(
                "Enter",
                style: TextStyle(color: Colors.white, letterSpacing: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
