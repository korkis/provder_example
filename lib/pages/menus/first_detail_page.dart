import 'package:flutter/material.dart';

class FirstDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('FirstDetailPage'),),      
      body: Center(
        child: Text('FirstDetailPage'),
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