import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Login Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              icon: Icon(Icons.cancel,color: Colors.black,size: 30.0,),
              onPressed: (){
                Navigator.pushNamed(context, '/baseapp');
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_box,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 300,
                    child: TextField(
                      decoration:
                      InputDecoration(labelText: 'Password'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text('Have an account ?',style: TextStyle(fontSize: 20.0),),
                  FlatButton(
                    child: Text('Sign in',style: TextStyle(fontSize: 20,),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
