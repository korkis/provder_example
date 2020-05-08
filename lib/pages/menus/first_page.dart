import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/phone.dart';
import 'package:provider_app/pages/menus/first_detail_page.dart';

import '../../main.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Phone phone = Provider.of<Phone>(context);
    // phone.name = '갤럭시';

     return ChangeNotifierProvider(
        create: (context) => Phone(),
        child: Scaffold(
          // appBar: AppBar(title: Text('FirstPage'),),      
          body: Center(
            child: Text('FirstPage'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.details),
            onPressed: () {
              if(routed) {
                Navigator.pushNamed(context, '/first/detail');
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider.value(
                    value: phone,
                    child: FirstDetailPage())
                ));

                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => FirstDetailPage()
                // ));
              }
            },
          ),
        ),
     );
  }
}