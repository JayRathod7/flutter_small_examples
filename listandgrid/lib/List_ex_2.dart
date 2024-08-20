import 'package:flutter/material.dart';

import 'Model/Second_List_model.dart';

class ListEx2 extends StatefulWidget {
  const ListEx2({super.key});

  @override
  State<ListEx2> createState() => _ListEx2State();
}

class _ListEx2State extends State<ListEx2> {
  List<SecondListModel> model = [
    SecondListModel(img: "assets/burger.png", name: "Burger", time: "5 : Min"),
    SecondListModel(img: "assets/pizza.png", name: "Pizza", time: "30 : Min"),
    SecondListModel(
        img: "assets/cake.png", name: "Cream Cake", time: "25 : Min"),
    SecondListModel(img: "assets/coffee.png", name: "Coffee", time: "15 : Min"),
    SecondListModel(img: "assets/tea.png", name: "Green Tea", time: "10 : Min"),
    SecondListModel(img: "assets/egg.png", name: "Boil Egg", time: "10 : Min"),
    SecondListModel(img: "assets/fries.png", name: "Fries", time: "20 : Min"),
    SecondListModel(
        img: "assets/icecream.png", name: "Ice-Cream", time: "5 : Min"),
    SecondListModel(img: "assets/momos.png", name: "MoMos", time: "30 : Min"),
    SecondListModel(
        img: "assets/noodles.png", name: "Veg Noodles", time: "20 : Min"),
    SecondListModel(img: "assets/rice.png", name: "Veg Rice", time: "20 : Min"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"), centerTitle: true),
      body: ListView.builder(
          itemCount: model.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              // height: 90,
              child: Card(
                // margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 14),
                    Image.asset(
                      model[index].img,
                      height: 80,
                      width: 50,
                    ),
                    SizedBox(width: 30),
                    Text(
                      model[index].name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    Text(
                      model[index].time,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 14)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
