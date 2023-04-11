import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  final value1Controller = TextEditingController();
  final value2Controller = TextEditingController();
  int sum=0;
  addThemUp(){
    int value1 = int.parse(value1Controller.text);
    int value2 = int.parse(value2Controller.text);
    sum = value1 + value2;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator Thing",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Addition of two Number",),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children:[
            TextField(
              controller: value1Controller,
              decoration: InputDecoration(
                  labelText: "Enter First Number"
              ),
            ),
            TextField(
              controller: value2Controller,
              decoration: InputDecoration(
                  labelText: "Enter Second Number"
              ),
            ),
            Text(
              "Result = $sum",
            ),
            ElevatedButton(
              onPressed: () {
                addThemUp();
                setState(() {});
              },
              child: Text("Show Result"),
            )
          ],
        ),
      ),
    );
  }
}
