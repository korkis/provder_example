import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/phone.dart';
import 'package:provider_app/pages/menus/first_page.dart';
import 'package:provider_app/pages/menus/second_page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Phone(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              ChangeNotifierProvider(
                create: (context) => Phone(),
                child: FirstPage()),
              SecondPage()
            ],
          ),
        ),
      ),
    );
  }
}