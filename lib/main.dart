import 'package:flutter/material.dart';
import 'package:navigation_demo/profile_page.dart';
import 'package:navigation_demo/settings_page.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
     theme: ThemeData.dark(),
      // Start the app with the "/" named route. In this case, the app starts
// on the FirstScreen widget.
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginPage(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/homepage': (context) => HomePage(),
        '/settingspage': (context)=> SettingsPage(),
        '/profilepage': (context)=> ProfilePage(),
      },
    )
  );
}
// TASK - Create navigation paths and screens as shown in the video using namedParameters
// LoginPage - First Page
// HomePage - Second Page
// Settings - Third Page which has two buttons 'logout' which takes you to LoginPage and 'Update Profile' which takes you to profile page
// ProfilePage - Fourth Page which has button as center to take you back to settings page

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),centerTitle: true,),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go to Home'),
          onPressed: (){
           // Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()));
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}
