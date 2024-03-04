import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_navigation.dart';
import 'package:flutter_application_2/floating%20action%20button.dart';
import 'package:flutter_application_2/radio_button.dart';
import 'package:flutter_application_2/validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Floating() ,
    );
  }
}

