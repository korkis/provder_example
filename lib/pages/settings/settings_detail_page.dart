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
        child: Text('SettingsDetail user.name:${user.name ?? 'null'}'),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text('상세세팅'),
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/settings/detail');
      //   },
      // ),
    );
  }
}