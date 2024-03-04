import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.indigoAccent,
        title: Center(child: Text('Floating Action Button')),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
      ),

      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.edit),
          backgroundColor: Colors.green,
          tooltip: 'Edit',
          mini: true,
          foregroundColor: Colors.black87,
          hoverColor: Colors.greenAccent,
          splashColor: Colors.lightGreen,
          
          onPressed: () => print("Edited"),
          ),
          
      ),
    );
  }
}