import 'package:flutter/material.dart';

class SecondDetailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondDetailPage'),),      
      body: Center(
        child: Text('SecondDetailPage'),
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