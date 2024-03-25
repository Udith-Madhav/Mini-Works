import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter a value'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveValueToSharedPreferences(_controller.text);
              },
              child: Text('Save to SharedPreferences'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveValueToSharedPreferences(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('myKey', value);
    print('Value saved to SharedPreferences: $value');
  }
}
