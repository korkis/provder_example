import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/book.dart';
import 'package:provider_app/models/phone.dart';
import 'package:provider_app/models/user.dart';

class FirstDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    Book book = Provider.of<Book>(context);
    // Phone phone = Provider.of<Phone>(context);

    return Scaffold(
      appBar: AppBar(title: Text('FirstDetailPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('사용자: ${user.name ?? 'null'}'),
            Text('책: ${book.name ?? 'null'}'),
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
          book.name = '백두산';
        },
      ),
    );
  }
}
