import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DisplayNumber extends StatefulWidget {
  const DisplayNumber({super.key});

  @override
  State<DisplayNumber> createState() => _DisplayNumberState();
}

class _DisplayNumberState extends State<DisplayNumber> {
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increment, 
                  child:Text('Positive') 
                ),

                SizedBox(width: 40,),

                ElevatedButton(
                  onPressed: _decrement,
                  child:Text('Negative') 
                ),
              ],
            )
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
      if(count > -100){
        count --;
        pref.setInt('negative', count);
      }
    });
  }
}