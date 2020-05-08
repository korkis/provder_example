import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/phone.dart';

class FirstDetailDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Phone phone = Provider.of<Phone>(context);

    return Scaffold(
      appBar: AppBar(title: Text('FirstDetailPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Phone>(
              builder: (context, phone, child) {
                return Text('폰:${phone.name ?? 'null'}');
              }
            )
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.details),
        onPressed: () {
          phone.name = '아이폰';
        },
      ),
    );
  }
}
