import 'package:flutter/material.dart';

class NewRadio extends StatefulWidget {
  const NewRadio({super.key});

  @override
  State<NewRadio> createState() => _NewRadioState();
}

class _NewRadioState extends State<NewRadio> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("What is your gender?",
            style: TextStyle(
              fontSize: 18,
            ),),

            Divider(),

            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged:(value){
                setState(() {
                  gender = value.toString();
                });
              } 
            ),

            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged:(value){
                setState(() {
                  gender = value.toString();
                });
              } 
            ),

            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged:(value){
                setState(() {
                  gender = value.toString();
                });
              } 
            ),
          ]),
      ),

    );
  }
}