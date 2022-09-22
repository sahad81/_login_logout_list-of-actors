import 'package:flutter/material.dart';
import 'package:week4/process.dart';
import 'package:week4/project.dart';


const String save_data ="username and password saved";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const process()
    );
  }
}

