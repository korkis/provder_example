import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/user.dart';

class SettingsDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('SettingsDetail'),),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('사용자: ${user.name ?? 'null'}'),
            Text('주소: ${User.address ?? 'null'}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          User.count++;
          // Navigator.pushNamed(context, '/settings/detail');
        },
      ),
    );
  }
}