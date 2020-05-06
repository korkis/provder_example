import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/book.dart';
import 'package:provider_app/models/user.dart';
import 'package:provider_app/pages/menu_page.dart';
import 'package:provider_app/pages/settings/settings_page.dart';

import '../main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    Book book = Provider.of<Book>(context);    

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: RaisedButton(
          child: Text('Login'),
          onPressed: () {
            user.name = '홍길동';
            book.name = '어린왕자';
            User.address = '서울';
            if(routed) {
              Navigator.pushNamed(context, '/menus');
            } else {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MenuPage()
              ));
            }
          },
        ),
      ),          
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        onPressed: () {
          user.name = '홍길동';
          book.name = '어린왕자';
          User.address = '서울';
          if(routed) {
            Navigator.pushNamed(context, '/settings');
          } else {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SettingsPage()
            ));
          }
        },
      ),  
    );
  }
}