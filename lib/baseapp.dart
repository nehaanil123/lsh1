import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/1.png',
            ),
            SizedBox(
              height: 80,
            ),
            RaisedButton(
              child: Text(
                'LOG IN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
              ),
              elevation: 10,
              textColor: Colors.white,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text(
                'SIGN UP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
              ),
              elevation: 10,
              textColor: Colors.white,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
