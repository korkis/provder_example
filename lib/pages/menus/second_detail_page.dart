import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/user.dart';

class SecondDetailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('SecondDetailPage'),),      
      body: Center(
        child: Text('SecondDetailPage ${user.name ?? 'null'}'),
      ),
    );
  }
}