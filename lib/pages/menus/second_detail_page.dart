import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/book.dart';
import 'package:provider_app/models/user.dart';

class SecondDetailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    Book book = Provider.of<Book>(context);

    return Scaffold(
      appBar: AppBar(title: Text('SecondDetailPage'),),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('사용자: ${user.name ?? 'null'}'),
            Text('책: ${book.name ?? 'null'}'),
          ],
        ),
      ),
    );
  }
}