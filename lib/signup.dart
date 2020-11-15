import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,size: 30.0,),
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
          title: Text('sign up',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Avride",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Charmonman',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Text("Create your account",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: nameController,
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
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  controller: confirmController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline,
                        color:Colors.teal),
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  minWidth: 300,
                  color: Colors.teal,
                  height: 60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 2,
                  child: Text("Sign up",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
