import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  late List list;
  late int index;

  DetailScreen({super.key, required this.list, required this.index});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List dataList = [];
  int dataIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataIndex = widget.index;
    dataList = widget.list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.transparent,
          ),
          preferredSize: const Size.fromHeight(10.0),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(dataList[dataIndex]["imageurl"]),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${dataList[dataIndex]["name"]} (${dataList[dataIndex]["realname"]})",
                              style: const TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Text.rich(TextSpan(children: [
                              const TextSpan(
                                  text: "Team : ",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "${dataList[dataIndex]["team"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ])),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 6),
                          Text(
                            "4.1",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite, color: Colors.red, size: 36),
                          Text(
                            "Like",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.call, color: Colors.blue, size: 36),
                          Text(
                            "Call",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.sms, color: Colors.blue, size: 36),
                          Text(
                            "Massage",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue, size: 36),
                          Text(
                            "Share",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        children: [
                          const TextSpan(
                              text: "Publisher : ",
                              style: TextStyle(color: Colors.black45)),
                          TextSpan(text: "${dataList[dataIndex]["publisher"]}")
                        ])),
                    Text.rich(TextSpan(
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        children: [
                          const TextSpan(
                              text: "First Appearance : ",
                              style: TextStyle(color: Colors.black45)),
                          TextSpan(
                              text: "${dataList[dataIndex]["firstappearance"]}")
                        ])),
                    Text.rich(TextSpan(
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        children: [
                          const TextSpan(
                              text: "Created By : ",
                              style: TextStyle(color: Colors.black45)),
                          TextSpan(text: "${dataList[dataIndex]["createdby"]}")
                        ])),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "${dataList[dataIndex]["bio"]}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16, height: 1.3),
                    textAlign: TextAlign.justify,
                  )),
            ],
          ),
        ));
  }
}
