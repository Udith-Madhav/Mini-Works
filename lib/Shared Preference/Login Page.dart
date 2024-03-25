import 'package:flutter/material.dart';
import 'package:flutter_application_2/Shared%20Preference/Home%20Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shared Preferences',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),)),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Email'),
                SizedBox(width: 35,),
                SizedBox(
                  width: 320,
                  child: TextFormField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email Address',
                        suffixIcon: Icon(Icons.email)
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 45,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Password'),
                SizedBox(width: 10,),
                SizedBox(
                  width: 320,
                  child: TextFormField(
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.lock)
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 80,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white
              ),
              onPressed: () async {
                
                _saveValueToSharedPreferences(_emailcontroller.text);
                _saveValueToSharedPreferences2(_passwordcontroller.text);
                Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
              }, 
              child: Text('Login')
            )
          ],
        ),
      ),
    );
  }

  Future <void> _saveValueToSharedPreferences(String value) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('email', value);
    print("email is : $value");
  }

  Future <void> _saveValueToSharedPreferences2(String value) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('password', value);
    print("password is : $value");
  }
}


