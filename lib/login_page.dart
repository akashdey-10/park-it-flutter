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
            MaterialPageRoute(builder: (BuildContext context) => Homepage()),
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
                      'Sign Out',
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
