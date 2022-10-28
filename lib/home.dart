import 'package:flutter/material.dart';
import 'package:flutter_application_1/FruitDataModel.dart';
import 'package:flutter_application_1/main.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;

  const FruitDetail({
    Key? key,
    required this.fruitDataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(fruitDataModel.name),
      ),
      body: Column(
        children: [
          Image.network(fruitDataModel.ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(
            fruitDataModel.desc,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Back",
                  style: TextStyle(
                      fontSize: 26, color: Colors.white, letterSpacing: 2.2),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ))
        ],
      ),
    );
  }
}
