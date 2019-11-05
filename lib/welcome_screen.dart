import 'package:flutter/material.dart';
import 'dart:convert';

import 'dart:io';

import 'package:myapp2/login_screen.dart';
import 'package:myapp2/signup_screen.dart';

class WelComeScreen extends StatefulWidget {
  WelComeScreen();
  @override
  _WelComeScreenState createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {

  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      body: Stack(
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
          Positioned(
            right: 500.0,
            left:500.0,
            top: 200.0,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  // Container(
                  //     width: 40.0,
                  //     padding: EdgeInsets.symmetric(horizontal: 50.0),
                  //     color: Colors.transparent,
                  //     child: Image.asset(
                  //       'assets/logo_top.png',
                  //       width: 80.0,
                  //       height: 80.0,
                  //       fit: BoxFit.contain,
                  //     )),
                  
                  Container(
                    width: 200,
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 20.0,
                              ),
                              Center(
                                  child: Text('Hello!',
                                      style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87))),
                              SizedBox(
                                height: 10.0,
                              ),
                              Center(
                                  child: Text('Start transforming the way\nyou enjoy your life',
                                  textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26, letterSpacing: 1))),
                              SizedBox(
                                height: 40.0,
                              ),
                              ButtonTheme(
                                height: 50,
                                child: RaisedButton(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 35.0, vertical: 5.0),
                                        color: Color(0xFF7000DE),
                                        child: Text(
                                          'Create Account',
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
                              ),
                                    SizedBox(
                                height: 40.0,
                              ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  RawMaterialButton(
                                    onPressed: () {},
                                    child: new Icon(
                                      Icons.face,
                                      color: Color(0xFF29438C),
                                      size: 35.0,
                                    ),
                                    shape: new CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: Color(0xFF29438C),
                                    padding: const EdgeInsets.all(15.0),
                                  ),
                                  RawMaterialButton(
                                    onPressed: () {},
                                    child: new Icon(
                                      Icons.radio,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    shape: new CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: Colors.white,
                                    padding: const EdgeInsets.all(15.0),
                                  ),
                                  RawMaterialButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSCreen()));
                                    },
                                    child: new Icon(
                                      Icons.face,
                                      color: Color(0xFF0098EC),
                                      size: 35.0,
                                    ),
                                    shape: new CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: Color(0xFF0098EC),
                                    padding: const EdgeInsets.all(15.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Already onboard?',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey.shade600)),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12.0),
                                      child: Text('Login',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
