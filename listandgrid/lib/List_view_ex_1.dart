import 'package:flutter/material.dart';
import 'package:listandgrid/Model/Student_model.dart';

import 'grid_view_ex.dart';

class ListViewEx1 extends StatefulWidget {
  const ListViewEx1({super.key});

  @override
  State<ListViewEx1> createState() => _ListViewEx1State();
}

class _ListViewEx1State extends State<ListViewEx1> {
  List<StudentModel> model = [
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Raj",
        subtitle: "Roll Number : 101"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Kishan ",
        subtitle: "Roll Number : 102"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Jay",
        subtitle: "Roll Number : 103"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Nirmal ",
        subtitle: "Roll Number : 104"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Geeta",
        subtitle: "Roll Number : 105"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "krishna",
        subtitle: "Roll Number : 106"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Kirtan",
        subtitle: "Roll Number : 107"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Himesh",
        subtitle: "Roll Number : 108"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Arijit",
        subtitle: "Roll Number : 109"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Ravi",
        subtitle: "Roll Number : 110"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Meet",
        subtitle: "Roll Number : 111"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Mehul ",
        subtitle: "Roll Number : 112"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Divya",
        subtitle: "Roll Number : 113"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Komal",
        subtitle: "Roll Number : 114"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Vidhi",
        subtitle: "Roll Number : 115"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Rakesh",
        subtitle: "Roll Number : 116"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Ramshe ",
        subtitle: "Roll Number : 117"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Suresh",
        subtitle: "Roll Number : 118"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "John ",
        subtitle: "Roll Number : 119"),
    StudentModel(
        check: false,
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEe_MNtYhO1X4gUA0QuiHrnvfvgjgZHuuRbg&usqp=CAU",
        title: "Ramkisan",
        subtitle: "Roll Number : 120"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewEx()));
              },
              icon: Icon(Icons.navigate_next_outlined))
        ],
      ),
      body: ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(model[index].img)),
                title: Text("${model[index].title}"),
                subtitle: Text(model[index].subtitle),
                trailing: Checkbox(
                  onChanged: (value) {
                    int number = index + 1;
                    var snackBar = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text("Selected Number Of Student : $number"));
                    print("click");
                    setState(() {
                      // model[index].check = !model[index].check;
                      model[index].check = value!;
                    });
                    if (model[index].check = value!) {
                      number = number + index;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      number = number - index;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  value: model[index].check,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.black54,
              ),
            ],
          );
        },
      ),
    );
  }
}
