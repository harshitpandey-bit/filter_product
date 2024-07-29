import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../screens/Main Screen.dart';

class RouteUtils{
  static Map<String, Widget Function(BuildContext)> routes={
    "/":(context)=> FormPage()
  };
}