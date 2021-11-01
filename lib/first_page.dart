/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    var style;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Center(
                child: Container(
                    width: 660,
                    height: 330,

                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/PARK IT LOGO.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 17.0, right: 17.0, top: 0, bottom: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        // ignore: avoid_print
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()));
                      },
                      color: Color.fromRGBO(41, 131, 96, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 17.0, right: 17.0, top: 30, bottom: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        print("Signin");
                      },
                      color: Color.fromRGBO(41, 131, 96, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
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
*/
import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 550,
                    height: 380,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset(
                      'assets/log.png',
                      height: 300,
                      width: 700,
                    )),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 17.0, right: 17.0, top: 0, bottom: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()));
                        print("Login");
                      },

                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          primary: Color(0xff298360),
                          side:
                              BorderSide(color: Color(0xff298360), width: 2.2),
                          minimumSize: Size(142.5, 45)),
                      //color: Color.fromRGBO(41, 131, 96, 1),
                      //shape: RoundedRectangleBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Acumin Variable Concept',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 1.7),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 17.0, right: 17.0, top: 30, bottom: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => register()));
                        print("Register");
                      },
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          primary: Color(0xff298360),
                          side:
                              BorderSide(color: Color(0xff298360), width: 2.2),
                          minimumSize: Size(142.5, 45)),

                      //color: Color.fromRGBO(41, 131, 96, 1),
                      //shape: RoundedRectangleBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Acumin Variable Concept',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 1.7),
                      ),
                    ),
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
