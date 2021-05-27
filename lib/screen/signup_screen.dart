import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey <FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  void _submit()
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Sign Up'),
        actions: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Text('Login'),
                  Icon(Icons.person)
                ],
                ),
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                },
                )
          ],
        ),
      body: Stack(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.limeAccent, Colors.redAccent]
              ),
            ),
          ),
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          child: Container(
            height: 300,
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

                    //Confirm Password
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Confirm Password'),
                      obscureText: true,
                      validator: (value)
                      {
                        if (value.isEmpty ||  value != _passwordController.text)
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