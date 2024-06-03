import 'package:flutter/material.dart';

extension AppSizer on BuildContext{

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}


extension NavigatorHelper on BuildContext{

  void pop () => Navigator.of(this).pop();

  void push (Widget page) => Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
}