import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool chekVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign in"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipPath(
                        clipper: OvalBottomBorderClipper(),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          color: Colors.deepPurple,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(11),
                            child: Row(
                              children: [
                                Image.asset(
                                  "asset/image/doctor-png-clipart-20.png",
                                ),
                                Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 40, left: 10),
                                          child: Image.asset(
                                            "asset/image/34-349408_roof-clipart-roof-house-house-roof-clip-art.png",
                                            height: 35,
                                            width: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 50, left: 20, bottom: 15),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Stay in Your Home",
                                            style: TextStyle(
                                                fontFamily: "Franky",
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "#coronavirus",
                                            style: TextStyle(
                                                fontSize: 08,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 25, fontFamily: "Franky"),
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)),
                            hintText: "Enter Your username",
                            labelText: "Username",
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: chekVisible
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  chekVisible = !chekVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)),
                            hintText: "Enter Your Password !",
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 20),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: chekVisible,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.deepPurpleAccent,
                          splashColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "You don't have account ?",
                          style: TextStyle(fontSize: 16),
                        ),
                        InkWell(
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return SignUp();
                            }));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
