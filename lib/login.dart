import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                controller: emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail,
                    color: Colors.teal,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline,
                    color: Colors.teal,),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
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
                onPressed: (){
                  Navigator.pushNamed(context, '/home_screen');
                },
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
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "-or sign up with-",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Roboto",
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/loginsignup/download.png'),
                  iconSize: 50,
                  onPressed: () {},

                ),
                IconButton(
                  icon: Image.asset('assets/images/loginsignup/ff.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/loginsignup/dd.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text('Don\'t have an account ?',style: TextStyle(fontSize: 20.0),),
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
