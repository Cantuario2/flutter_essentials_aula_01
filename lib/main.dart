import 'package:flutter/material.dart';
import 'pages/home_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Cantuario2',
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
      home: const HomeWidget(),
    );
  }
}
