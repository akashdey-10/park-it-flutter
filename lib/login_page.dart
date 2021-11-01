/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  bool _isLoading = false;
  signIn(String email, String pass) async {
    var url =
        Uri.parse("https://park-it-express.herokuapp.com/api/users/login");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {"email": email, "password": pass};
    var body = json.encode(data);
    var jsonResponse;
    var res = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print('jsonResponse');
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(jsonResponse);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 33),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(hintText: "Email"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                    color: Colors.green,
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                    onPressed: _emailController.text == "" ||
                            _passController.text == ""
                        ? null
                        : () {
                            setState(() {
                              _isLoading = true;
                            });
                            signIn(_emailController.text, _passController.text);
                          }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  bool _isLoading = false;
  signIn(String email, String pass) async {
    var url =
        Uri.parse("https://park-it-express.herokuapp.com/api/users/login");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {"email": email, "password": pass};
    var body = json.encode(data);
    var jsonResponse;
    var res = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print('jsonResponse');
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(jsonResponse);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 365,
                    height: 250,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/log.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 2.2),
                          minimumSize: Size(142.5, 45)),

                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Acumin Variable Concept',
                            fontWeight: FontWeight.bold),
                      ),

                      //Color.fromRGBO(41, 131, 96, 1),
                      //Width: 160,
                      //Height: 40,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff298360),
                        side: BorderSide(color: Color(0xff298360), width: 2.2),
                        minimumSize: Size(142.5, 45)),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Acumin Variable Concept',
                          fontWeight: FontWeight.bold),
                    ),
                    //Color: Colors.white,
                    //Width: 160,
                    //Height: 40,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 35, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: 285,
                height: 45,
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff298360), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff298360), width: 1.5),
                    ),
                    suffixIcon: Icon(Icons.email_outlined,
                        size: 20, color: Color(0xff298360)),
                    labelText: 'Email/Phone No.',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    //hintText: 'Enter your Email/Phone No.'
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: 285,
                height: 45,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff298360), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 1.5),
                    ),
                    suffixIcon: Icon(Icons.security_outlined,
                        size: 20, color: Color(0xff298360)),
                    labelText: 'Password *',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    //hintText: 'Enter secure password'
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 35, bottom: 0),
              child: Container(
                margin: EdgeInsets.all(30),
                height: 35,
                width: 113,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(41, 131, 96, 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            /*Text('New User? Create Account',
                style: TextStyle(
                    color: Color.fromRGBO(41, 131, 96, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w700))*/
          ],
        ),
      ),
    );
  }
}
