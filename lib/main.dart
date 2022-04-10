import 'package:flutter/material.dart';
import 'package:to_do/my_theme.dart';
import 'package:to_do/ui/home/home_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName:(BuildContext)=>HomeScreen(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}

