import 'package:flutter/material.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BaseApp(),
      routes: <String,WidgetBuilder>{
        '/baseapp' : (context) =>BaseApp(),
        '/login' : (context) =>Login(),
        '/signup' : (context) =>SignUp(),
      },
    );
  }
}
