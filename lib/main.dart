// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/FruitDataModel.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<String> fruitname = [
    'Apple',
  ];
  static List url = [
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
  ];
  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(
          '${fruitname[index]}', '${url[index]}', '${fruitname[index]} '));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Screen One",
              style: TextStyle(fontSize: 30, letterSpacing: 2),
            )),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  Text(
                    Fruitdata[index].name,
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Go To Screen",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              letterSpacing: 2.2),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FruitDetail(
                                        fruitDataModel: Fruitdata[index],
                                      )));
                        },
                      ))
                ],
              );

              // ignore: dead_code

              // ignore: dead_code
            }));
  }
}
