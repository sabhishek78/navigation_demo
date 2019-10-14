
import 'package:flutter/material.dart';

import 'main.dart';
import 'profile_page.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(

              color: Colors.blue,
              onPressed: () {
               // Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage()));
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                "LogOut",style: TextStyle(color: Colors.white,fontSize: 21),
              ),
            ),
            RaisedButton(

              color: Colors.blue,
              onPressed: () {
               // Navigator.push(context,MaterialPageRoute(builder: (context)=> ProfilePage()));
                Navigator.pushNamed(context, '/profilepage');
              },
              child: Text(
                "Update Profile",style: TextStyle(color: Colors.white,fontSize: 21),
              ),
            )
          ],
        ),
      ),

    );
  }
}