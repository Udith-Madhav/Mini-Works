import 'package:flutter/material.dart';
import 'package:flutter_application_2/Shared%20Preference/Login%20Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),

          Center(child: Text("HELLO",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),)),

          SizedBox(height: 15,),

          // Center(
          //   child: SizedBox(
          //     width: 360,
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //         // enabledBorder: OutlineInputBorder()
          //         border: InputBorder.none
          //       ),
          //     ),
          //   ),
          // ),
          FutureBuilder(
            future: SharedPreferences.getInstance(), 
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return CircularProgressIndicator();
              }
              String? email = snapshot.data!.getString('email');
              return Text('$email');
            } 
          ),

          SizedBox(height: 40,),

          ElevatedButton(
            onPressed: () async{
              SharedPreferences preferences = await SharedPreferences.getInstance();
              preferences.remove('email');
              print("email removed");
              Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginPage()));
            }, 
            child: Text("Logout")
          )
        ],
      ),
    );
  }
}