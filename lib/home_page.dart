
import 'package:flutter/material.dart';

import 'settings_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(

          color: Colors.red,
          onPressed: () {
           // Navigator.push(context,MaterialPageRoute(builder: (context)=> SettingsPage()));
            Navigator.pushNamed(context, '/settingspage');
          },
          child: Text(
            "Settings",style: TextStyle(color: Colors.white,fontSize: 21),
          ),
        ),
      ),

    );
  }
}