import 'package:flutter/material.dart';
import 'dart:convert';

import 'dart:io';

import 'ResponsiveLayout.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 0.0,
          left: -MediaQuery.of(context).size.width/9,
          top: -MediaQuery.of(context).size.height/2,
          child: Transform.rotate(
            angle: -0.3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: new Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(const Radius.circular(100.0)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xFF7000DE), Color(0xFF375FE1)],
                    ),),
                  // decoration: new BoxDecoration(
                  //     color: Color(0xFF7000DE),
                  //     borderRadius: new BorderRadius.all(const Radius.circular(40.0),
                  //     )),
                  child: new Center(
                    child: new Text(""),
                  )),
            ),
          ),
        ),
        ResponsiveLayout(
          largeScreen: LargeChild(.45, 0.55),
          mediumScreen: LargeChild(.65, 0.35),
          smallScreen: SmallChild(),
        ),
      ],
    );
  }
}

class LargeChild extends StatefulWidget {

  final double widthFactor;
  final double widthFactorFirst;
  LargeChild(this.widthFactor, this.widthFactorFirst);

  @override
  _LargeChildState createState() => _LargeChildState();
}

class _LargeChildState extends State<LargeChild> {
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: widget.widthFactor,
            heightFactor: .7,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 35.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                            child: Text('Login',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87))),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.3),
                              ),
                              hintText: 'Email',
                              labelText: 'Email',
                              labelStyle: TextStyle(fontSize: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20.0,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                          },
                          onSaved: (text) {
                            _email = text;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.3),
                              ),
                              hintText: 'Password',
                              labelText: 'Password',
                              labelStyle: TextStyle(fontSize: 14.0),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 20.0,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                          },
                          onSaved: (text) {
                            _password = text;
                          },
                        ),
                        InkWell(
                          onTap: (){},
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 18.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey.shade600)),
                            ),
                          ),
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 5.0),
                          color: Color(0xFF7000DE),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(30.0)),
                          onPressed: () {
                            _formKey.currentState.validate();
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Dont have an account?',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade600)),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSCreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0),
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFF7000DE),
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatefulWidget {
  @override
  _SmallChildState createState() => _SmallChildState();
}

class _SmallChildState extends State<SmallChild> {

  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
//              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                            child: Text('Login',
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87))),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.3),
                              ),
                              hintText: 'Email',
                              labelText: 'Email',
                              labelStyle: TextStyle(fontSize: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20.0,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                          },
                          onSaved: (text) {
                            _email = text;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.3),
                              ),
                              hintText: 'Password',
                              labelText: 'Password',
                              labelStyle: TextStyle(fontSize: 14.0),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 20.0,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                          },
                          onSaved: (text) {
                            _password = text;
                          },
                        ),
                        InkWell(
                          onTap: (){},
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 18.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey.shade600)),
                            ),
                          ),
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 5.0),
                          color: Color(0xFF7000DE),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(30.0)),
                          onPressed: () {
                            _formKey.currentState.validate();
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Dont have an account?',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade600)),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSCreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0),
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFF7000DE),
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
//            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

