import 'package:flutter/material.dart';

class SettingsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SettingsDetail'),),      
      body: Center(
        child: Text('SettingsDetail'),
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