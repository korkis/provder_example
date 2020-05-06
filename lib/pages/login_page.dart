import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/book.dart';
import 'package:provider_app/models/user.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    user.name = 'Hong';
    Book book = Provider.of<Book>(context);
    book.name = '어린왕자';

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: RaisedButton(
          child: Text('Login'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/menus');
          },
        ),
      ),          
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        onPressed: () {
          Navigator.pushNamed(context, '/settings');
        },
      ),  
    );
  }
}