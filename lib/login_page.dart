import 'package:flutter/material.dart';
import 'auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Center(
        child: RaisedButton(
          child: Text('Anonymous Sign In'),
          onPressed: () async {
            await AuthServices.signInAnonymous();
          },
        ),
      ),
    );
  }
}