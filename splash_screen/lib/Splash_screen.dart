import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/honda_logo.png", height: 50, width: 50),
          const Text(
            "HONDA",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 54,
                color: Colors.black87),
          ),
          const Text(
            "Collection of Bikes & Cars",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 2,
                wordSpacing: 8,
                color: Colors.grey),
          ),
          Lottie.asset("assets/lotti_img.json"),
        ],
      ),
    ));
  }

  checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      check_if_already_login();
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      check_if_already_login();
    } else {
      _showConnectionDialog();
    }
  }

  void check_if_already_login() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  void _showConnectionDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [Icon(Icons.error), Text("\tNetwork Error")],
          ),
          content: Text('Please check your internet connection.',
              style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text("Exit", style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }

  _onPop() async {}

// void ErrorBox() async {
//   return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text(
//               "Check Internet C                                                              onnection"),
//           content: const Text("Please Check Your Internet Connection"),
//           actions: [
//             ElevatedButton(
//                 onPressed: () {
//                   exit(0);
//                 },
//                 child: const Text("Exit"))
//           ],
//         );
//       });
// }
}
