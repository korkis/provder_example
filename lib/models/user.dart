import 'package:flutter/material.dart';
import 'package:provider_app/models/role.dart';

class User extends ChangeNotifier {
  static String address;
  static int count;

  String _name;
  get name => _name;
  set name(String name) {
    _name = name;
    notifyListeners();
  }

  int _age;
  get age => _age;
  set age(int age) {
    _age = age;
    notifyListeners();
  }

  Role _role;
  get role => _role;
  set role(Role role) {
    _role = role;
    notifyListeners();
  }
}