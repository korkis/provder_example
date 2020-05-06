import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),      
      body: Center(
        child: Text('Settings'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {
          Navigator.pushNamed(context, '/settings/detail');
        },
      ),
    );
  }
}