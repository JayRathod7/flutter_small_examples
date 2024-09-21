import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'datalist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getData() async {
    var url = Uri.parse("https://simplifiedcoding.net/demos/marvel/");
    var result = await http.get(url);
    return jsonDecode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              print("Sorry! Something went Wrong");
            }
            if (snapshot.hasData) {
              return DataListModel(list: snapshot.data);
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
