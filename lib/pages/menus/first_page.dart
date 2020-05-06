import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/phone.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Phone phone = Provider.of<Phone>(context);
    phone.name = '갤럭시';

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