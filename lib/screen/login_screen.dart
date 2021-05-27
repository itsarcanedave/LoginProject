import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey <FormState> _formKey = GlobalKey();

  void _submit()
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Login'),
        actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('Signup'),
                Icon(Icons.person_add)
              ],
              ),
              textColor: Colors.white,
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(SignupScreen.routeName);
              },
              )
        ],
      ),
      body: Stack(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.lightGreenAccent]
              ),
            ),
          ),
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          child: Container(
            height: 260,
            width: 300,
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget> [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value)
                      {
                        if (value.contains('@') || value.isEmpty)
                        {
                        return 'Email Tidak Valid';
                        } return null;
                      },
                      onSaved:(value)
                      {

                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value)
                      {
                        if (value.isEmpty || value.length < 6)
                        {
                        return 'Password Minimal 6 Karakter';
                        } return null;
                      },
                      onSaved:(value)
                      {

                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      child: Text(
                        'Submit'
                      ),
                      onPressed: ()
                      {
                        _submit();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
          )
        ],
      ),
    );
  }
}