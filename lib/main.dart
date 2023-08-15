import 'package:flutter/material.dart';
import 'package:newsapp/screens/screen1.dart';
import 'package:newsapp/screens/screen2.dart';
import 'package:newsapp/screens/screen3.dart';
import 'package:newsapp/screens/screen4.dart';

void main() {
  runApp(const news_app());
}

class news_app extends StatelessWidget {
  const news_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenTwo());
  }
}
