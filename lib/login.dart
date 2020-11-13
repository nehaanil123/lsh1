import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 30.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/baseapp');
          },
        ),
        title: Text('login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
                      obscureText: true,
                      decoration:
                      InputDecoration(labelText: 'Password'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                onPressed: (){},
                minWidth: 300,
                color: Colors.teal,
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 2,
                child: Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
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
