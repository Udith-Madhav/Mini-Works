import 'package:flutter/material.dart';
import 'package:flutter_application_2/Drawer.dart';
import 'package:flutter_application_2/Icon%20count.dart';
import 'package:flutter_application_2/Shared%20Preference/Login%20Page.dart';
import 'package:flutter_application_2/Snack%20bar.dart';
import 'package:flutter_application_2/Toast%20Message.dart';
import 'package:flutter_application_2/bottom_navigation.dart';
import 'package:flutter_application_2/circle%20avatar.dart';
import 'package:flutter_application_2/floating%20action%20button.dart';
import 'package:flutter_application_2/image%20picker.dart';
import 'package:flutter_application_2/positive%20and%20negative%20count.dart';
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
      home: ListDrawer(),
    );
  }
}

