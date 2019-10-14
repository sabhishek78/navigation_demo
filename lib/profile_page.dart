
import 'package:flutter/material.dart';

import 'settings_page.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(

          color: Colors.blue,
          onPressed: () {
            //Navigator.push(context,MaterialPageRoute(builder: (context)=> SettingsPage()));
            Navigator.pushNamed(context, '/settingspage');
          },
          child: Text(
            "Back",style: TextStyle(color: Colors.white,fontSize: 21),
          ),
        ),
      ),

    );
  }
}