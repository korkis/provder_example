import 'package:flutter/material.dart';
import 'package:provider_app/pages/menus/second_detail_page.dart';

import '../../main.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      // appBar: AppBar(title: Text('SecondPage'),),      
      body: Center(
        child: Text('SecondPage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {
          if(routed) {
            Navigator.pushNamed(context, '/second/detail');
          } else {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondDetailpage()
            ));
          }
        },
      ),
    );
  }
}