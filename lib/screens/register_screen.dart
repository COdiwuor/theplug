import 'package:flutter/material.dart';
import 'package:the_plug/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static final String id = "register";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obSecureText = false;
  _toggle() {
    setState(() {
      _obSecureText = !_obSecureText;
    });
  }

  Widget _showUsernameInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: const Icon(Icons.face_sharp
              // size: 40.0,
              ),
          labelText: 'Enter First Name', //firstname
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),
        // keyboardType: TextInputType.text,
        // validator: (lastname) =>
        //     lastname.trim().isEmpty ? 'Enter valid name' : null,
        // onSaved: (lastname) => _lastname = lastname,
      ),
    );
  }

  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: const Icon(Icons.mail_sharp),
          labelText: 'Email',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (email) => !email.contains('@') ? 'Email is invalid' : null,
        //  onSaved: (email) => _email = email,
      ),
    );
  }

  Widget _showPhonenumberInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: const Icon(
            Icons.phone,
          ),
          labelText: 'Phone Number',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),
        keyboardType: TextInputType.text,
        // validator: (firstname) => firstname.trim().isEmpty
        //     ? 'Enter valid name'
        //     : null,
        // onSaved: (firstname) => _firstname = firstname,
      ),
    );
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          icon: const Icon(Icons.security_sharp),
          suffixIcon: IconButton(
            color: Colors.black,
            icon: _obSecureText
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: _toggle,
          ),
          labelText: 'Password',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),
        obscureText: _obSecureText,
        validator: (password) =>
            password.length < 6 ? "Must be atleast six characters" : null,
        // onSaved: (password) => _password = password,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.lightGreenAccent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'The Plug',
                      style: TextStyle(
                        fontFamily: 'PatrickHand',
                        fontSize: 30.0,
                        color: Colors.lightGreenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "User Registration",
                    style: TextStyle(
                      fontFamily: 'Sacramonte',
                      color: Colors.black,
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height: 20.0,
                      child: Divider(
                        color: Colors.black,
                      )),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          _showUsernameInput(),
                          _showEmailInput(),
                          _showPhonenumberInput(),
                          _showPasswordInput(),
                          SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            child: Text("Register"),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.lightGreenAccent,
                            onPressed: () => print("submit"),
                          ),
                          // Container(
                          //   width: 340.0,
                          //   height: 45.0,
                          //   child: FlatButton(
                          //     onPressed: () {
                          //       // _submit();
                          //     },
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(22.0)),
                          //     color: Colors.orange,
                          //     padding: EdgeInsets.all(10.0),
                          //     child: Text(
                          //       'Register',
                          //       style: TextStyle(fontSize: 15.0, color: Colors.white),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Already have an account?"),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, LoginScreen.id);
                                  },
                                  child: Text('Login')),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
