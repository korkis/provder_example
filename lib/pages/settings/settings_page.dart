import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/user.dart';
import 'package:provider_app/pages/settings/settings_detail_page.dart';

import '../../main.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('사용자: ${user.name ?? 'null'}'),
            Text('주소: ${User.count ?? 'null'}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {          
          if(User.count == null) {
            User.count = 1;
          } else {
            User.count++;
          }
          if(routed) {
            Navigator.pushNamed(context, '/settings/detail');
          } else {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SettingsDetailPage()
            ));
          }
        },
      ),
    );
  }
}