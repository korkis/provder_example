import 'package:flutter/material.dart';

class Role extends ChangeNotifier {
  String _roleName;
  get roleName => _roleName;
  set roleName(roleName) {
    _roleName = roleName;
    notifyListeners();
  }
}