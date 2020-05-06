import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),      
      body: Center(
        child: Text('SecondPage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {
          Navigator.pushNamed(context, '/second/detail');
        },
      ),
    );
  }
}