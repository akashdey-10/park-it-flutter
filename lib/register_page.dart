import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Text("Login Page"),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 65.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
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
                  left: 15.0, right: 15.0, top: 30, bottom: 0),

              /*padding: EdgeInsets.symmetric(
                
                horizontal: 25,
                vertical: 1,
              ),*/
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
                    suffixIcon: Icon(
                      Icons.person,
                      color: Color(0xff298360),
                      size: 20,
                    ),
                    labelText: 'Full Name *',
                    //hintText: 'Enter Full Name',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    /*labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      //fontWeight: FontWeight,
                      fontFamily: 'Acumin Variable Concept',
                    ),*/
                  ),
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
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xff298360),
                      size: 20,
                    ),
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
                    suffixIcon: Icon(
                      Icons.security_outlined,
                      color: Color(0xff298360),
                      size: 20,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    //hintText: 'Enter secure password'
                  ),
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
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff298360), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff298360), width: 1.5),
                    ),
                    suffixIcon: Icon(
                      Icons.security_outlined,
                      color: Color(0xff298360),
                      size: 20,
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    //hintText: 'Confirm secure password'
                  ),
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
                    suffixIcon: Icon(
                      Icons.time_to_leave_outlined,
                      color: Color(0xff298360),
                      size: 20,
                    ),
                    labelText: 'Car No Plate',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                    //hintText: 'Enter your car plate no.'
                  ),
                ),
              ),
            ),
            /*TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),*/
            Container(
              margin: EdgeInsets.all(30),
              height: 35,
              width: 113,
              decoration: BoxDecoration(
                  color: Color(0xff298360),
                  borderRadius: BorderRadius.circular(8)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => homePage()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  homePage() {}
}

class HomePage {}
