import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: scaffold(
        appBar: AppBar(
          title: Text('ecommerce_app'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,

        )
        body: center(child: Text('hello')),
              ),
    );
  }
}

