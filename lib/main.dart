import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: "Facon",
                  ),
                ),
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontStyle: FontStyle.italic))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    "asset/image/3703625.jpg",
                    height: 559,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      InkWell(
                          child: Text(
                            "- Sign In -",
                            style:
                                TextStyle(fontSize: 30, fontFamily: "Franky"),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return SignIn();
                            }));
                          }),
                      InkWell(
                        child: Text(
                          "- Sign Up -",
                          style: TextStyle(fontSize: 30, fontFamily: "Franky"),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return SignUp();
                          }));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
