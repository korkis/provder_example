import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('FirstPage'),),      
      body: Center(
        child: Text('FirstPage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {
          Navigator.pushNamed(context, '/first/detail');
        },
      ),
    );
  }
}