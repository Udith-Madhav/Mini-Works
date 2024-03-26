import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumberIcons extends StatefulWidget {
  const NumberIcons({super.key});

  @override
  State<NumberIcons> createState() => _NumberIconsState();
}

class _NumberIconsState extends State<NumberIcons> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter')),
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),

            Text('Count',style: TextStyle(fontSize: 24),),

            Text('$count',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

            SizedBox(height: 80,),

             FloatingActionButton(
                onPressed: _increment,
                child: Icon(Icons.add),
              ),
          ],
        ),
      ),
      
    );
  }

  _increment() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if(count < 100){
      setState(() {
        count ++;
        pref.setInt('positive', count);
      });
    }
  }

  _decrement() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      if(count > 0){
        count --;
        pref.setInt('negative', count);
      }
    });
  }
}