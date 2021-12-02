import 'package:external_app/external_app.dart';
import 'package:flutter/material.dart';

main() {
  //Main Function
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration:const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff1cbf3c), Color(0xff1fb859)])),
        child:const ExternalApp(), //class that call a external app
      )),
    );
  }
}
