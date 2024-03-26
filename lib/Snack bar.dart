import 'package:flutter/material.dart';
import 'package:flutter_application_2/Shared%20Preference/Home%20Page.dart';

class SnackMessage extends StatefulWidget {
  const SnackMessage({super.key});

  @override
  State<SnackMessage> createState() => _SnackMessageState();
}

class _SnackMessageState extends State<SnackMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SNACKBAR')),
        backgroundColor: Colors.amberAccent,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: Text('You Clicked a Button'),
              action: SnackBarAction(
                label: 'Undo', 
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SnackMessage()));
                }
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }, 
          child: Text('Click Me')
        ),
      ),
    );
  }
}