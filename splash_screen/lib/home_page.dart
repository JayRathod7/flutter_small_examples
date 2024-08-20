import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/contact_page.dart';
import 'package:splash_screen/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences sharedPreferences;
  late String name;
  late String number;
  late String password;

  @override
  void initState() {
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (onpoop) {
        showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Alert"),
              content: Text("Do you want to Exit ?."),
              actions: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: Text("Yes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No")),
              ],
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("HONDA", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactPage(
                                name: name,
                                password: password,
                                number: number,
                              )));
                },
                icon: Icon(Icons.person, color: Colors.white)),
            IconButton(
                onPressed: () {
                  sharedPreferences.setBool("check_login", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: Icon(Icons.logout, color: Colors.white)),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Column(children: [
              Image.asset("assets/1.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 6),
              const Text("Yamaha MT 15 V2",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.1.99 - 2.04 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/2.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("Royal Enfield Himalayan 450",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.2.85 - 3.00 Lakh* ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/3.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("Triumph Scrambler 400 X",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.2.62 - 2.80 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/4.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("Harley-Davidson X440",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.2.34 - 2.50 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/5.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("BMW G 310 GS",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.2.9 - 2.30 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/6.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("Yamaha MT-03",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.4.60 - 5.00 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),
              Image.asset("assets/7.jpg",
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 8),
              const Text("Royal Enfield Hunter 350",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Rs.1.70 - 1.75 Lakh*",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              SizedBox(height: 6),

              // ElevatedButton(
              //     onPressed: () {
              //       // Navigator.push(context,
              //       //     MaterialPageRoute(builder: (context) => ContactUsPage()));
              //     },
              //     child: Text("Contact Us"))
            ]),
          ),
        ),
      ),
    );
  }

  void initial() async {
    sharedPreferences = await SharedPreferences.getInstance();
    name = sharedPreferences.getString("L_name")!;
    number = sharedPreferences.getString("L_number")!;
    password = sharedPreferences.getString("L_pass")!;

    print("name $name\nnumber $number\npassword $password");
  }
}
