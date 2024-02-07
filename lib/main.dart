import 'package:flutter/material.dart';
import 'Dicee_Screen.dart';

void main() {
  Widget widget;

  widget = DiceScreen();

  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget? startWidget;

  MyApp({this.startWidget});

  @override
  Widget build(BuildContext context) {
    {
      return MaterialApp(debugShowCheckedModeBanner: false, home: startWidget);
    }
  }
}
