import 'package:flutter/material.dart';
import 'package:listandgrid/List_view_ex_1.dart';
import 'package:listandgrid/login_page.dart';

import 'List_ex_2.dart';
import 'grid_view_ex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        appBarTheme: AppBarTheme(color: Colors.green),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
