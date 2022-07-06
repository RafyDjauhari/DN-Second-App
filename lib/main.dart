import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anjay Gaming"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
              child: Container(
                height: 100,
                width: double.infinity,
                child: Text("CHART"),
              ),
              elevation: 3,
              color: Colors.blue),
          Card(
            child: Text("LIST OF TX"),
          )
        ],
      ),
    );
  }
}
