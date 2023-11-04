import 'package:flutter/cupertino.dart';
import 'package:web_project/main.dart';

extension DoubleExtensions on double {
  double get resWidth => MediaQuery.of(MyApp.navigatorKey.currentContext!).size.width * this;
  double get resHeight => MediaQuery.of(MyApp.navigatorKey.currentContext!).size.height * this;
}

extension IntExtensions on int {
  double get textScale => MediaQuery.of(MyApp.navigatorKey.currentContext!).textScaleFactor * this;
}