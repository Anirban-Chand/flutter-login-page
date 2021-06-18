import 'package:flutter/material.dart';
import 'package:login_ui/homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Logo
    final logo = Hero(
      tag: 'tag',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        radius: 30.0,
        child: Icon(
          Icons.person_pin_rounded,
          size: 90,
        ),
      ),
    );

    // Email TextBox
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: _email,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    // Password TextBox
    final password = TextFormField(
      autofocus: false,
      controller: _password,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    // Login Button
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            if (_email.text == 'abcdefgh@gmail.com' &&
                _password.text == '12345')
              Navigator.of(context).pushNamed(HomePage.tag);
            else
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    'Wrong Email/Password!',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              );
          },
          color: Colors.lightBlueAccent,
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    // Forget Password TextButton
    final forgetLabel = TextButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final heading = Container(
      alignment: Alignment.center,
      child: Text(
        'Login UI',
        style: TextStyle(
          backgroundColor: Colors.transparent,
          fontSize: 30.0,
        ),
      ),
    );

    // Main Window
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(
              height: 22.0,
            ),
            heading,
            SizedBox(
              height: 48.0,
            ),
            logo,
            SizedBox(
              height: 48.0,
            ),
            email,
            SizedBox(
              height: 8.0,
            ),
            password,
            SizedBox(
              height: 24.0,
            ),
            loginButton,
            forgetLabel
          ],
        ),
      ),
    );
  }
}
