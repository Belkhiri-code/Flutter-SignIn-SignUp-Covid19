import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'main.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.pink,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              "asset/image/3670269.jpg",
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
                  "Sign Up",
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Enter Your Full Name...",
                        labelText: "your name",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Enter Your Date...",
                        labelText: "Birth Day",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "enter phone number exemple +21355649878...",
                        labelText: "Phone",
                        prefix: Text(" +213 "),
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Enter Your Email...",
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (_) {
                          return MyApp();
                        }));
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Text(
                        'Sign UP',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.pink,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
