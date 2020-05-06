import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/user.dart';
import 'package:provider_app/pages/login_page.dart';
import 'package:provider_app/pages/menu_page.dart';
import 'package:provider_app/pages/menus/first_detail_page.dart';
import 'package:provider_app/pages/menus/first_page.dart';
import 'package:provider_app/pages/menus/second_detail_page.dart';
import 'package:provider_app/pages/menus/second_page.dart';
import 'package:provider_app/pages/settings/settings_detail_page.dart';
import 'package:provider_app/pages/settings/settings_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<User>(
          create: (context) => User(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),       
          '/settings': (context) => SettingsPage(),
          '/settings/detail': (context) => SettingsDetailPage(),
          '/first': (context) => FirstPage(),
          '/first/detail': (context) => FirstDetailPage(),
          '/second': (context) => SecondPage(),
          '/second/detail': (context) => SecondDetailpage(),
          '/menus': (context) => MenuPage()          
        },
      ),
    );
  }
}