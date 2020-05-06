import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/user.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    user.name = 'Hong';
    
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),      
      body: Center(
        child: Text('Settings user.name:${user.name ?? 'null'}'),
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