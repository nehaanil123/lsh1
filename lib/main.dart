import 'package:flutter/material.dart';
import 'package:projecthac/home_screen.dart';
import './signup.dart';
import './baseapp.dart';
import './login.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        accentColor: Colors.grey,
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.greenAccent,
      ),
      home: BaseApp(),
      routes: <String,WidgetBuilder>{
        '/baseapp' : (context) =>BaseApp(),
        '/login' : (context) =>Login(),
        '/signup' : (context) =>SignUp(),
        '/home_screen' : (context) =>HomeScreen(),
      },
    );
  }
}
