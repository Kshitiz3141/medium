// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medium/constants.dart';
import 'package:medium/example.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxie,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        )
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxie,
          height: 60,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget _buildForgot() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => print('Forgot pwd pressed'),
        child: Text(
          'Forgot Password',
          style: TextStyle(color: Color(0xFFFFFFFF), fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(90, 150, 140, 1),
                  Color.fromRGBO(100, 160, 150, 1),
                  Color.fromRGBO(110, 180, 160, 1)
                ],
                stops: [
                  0.2,
                  .4,
                  0.7,
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  _buildEmail(),
                  SizedBox(height: 30),
                  _buildPassword(),
                  SizedBox(height: 30),
                  _buildForgot(),
                  //SizedBox(height: 30),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(
                                () {
                                  _rememberMe = value!;
                                },
                              );
                            },
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF), fontFamily: 'OpenSans'),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6CA8F1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ExampleScreen()),
                      ),
                      child: Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 10,
                          color: (Color(0xFFA7D8BD)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
