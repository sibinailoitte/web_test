import 'package:flutter/material.dart';
import 'package:myapp2/welcome_screen.dart';

import './login_screen.dart';
import 'ResponsiveLayout.dart';
import 'signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
//            children: <Widget>[NavBar(), Body()],
            children: <Widget>[Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(.45, 0.55),
      mediumScreen: LargeChild(.65, 0.35),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {

  final double widthFactor;
  final double widthFactorFirst;
  LargeChild(this.widthFactor, this.widthFactorFirst);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: widthFactor,
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
//                    key: _formKey,
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
//                              _formKey.currentState.validate();
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
                              child: Icon(
                                Icons.face,
                                color: Color(0xFF29438C),
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xFF29438C),
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.radio,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSCreen()));
                              },
                              child: Icon(
                                Icons.face,
                                color: Color(0xFF0098EC),
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
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
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: widthFactorFirst,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "WellCome To ",
                        style:
                        TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "FitnessApp",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("FITNESS APP DESCRIPTION"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
//                  Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'FitnessApp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("FITNESS APP DESCRIPTION"),
            ),
            SizedBox(
              height: 30,
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
//                    key: _formKey,
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
//                              _formKey.currentState.validate();
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
                              child: Icon(
                                Icons.face,
                                color: Color(0xFF29438C),
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xFF29438C),
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.radio,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
                              elevation: 2.0,
                              fillColor: Colors.white,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSCreen()));
                              },
                              child: Icon(
                                Icons.face,
                                color: Color(0xFF0098EC),
                                size: 35.0,
                              ),
                              shape: CircleBorder(),
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
