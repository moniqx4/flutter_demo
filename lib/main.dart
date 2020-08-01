import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => {runApp(new FlutterDemoApp())};

class FlutterDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello from Flutter Demo App!",
        home: Scaffold(
            appBar: AppBar(
              title: Text("TruChampions Demo App"),
              centerTitle: true,
            ),
            body: Home()));
  }
}
