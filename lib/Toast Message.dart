import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Messagetoast extends StatefulWidget {
  const Messagetoast({super.key});

  @override
  State<Messagetoast> createState() => _MessagetoastState();
}

class _MessagetoastState extends State<Messagetoast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Toast Messages',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'HI USER',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM_LEFT, 
                );
              }, 
              child: Text('Login'),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: () {}, 
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}