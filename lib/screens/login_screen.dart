import 'package:flutter/material.dart';
import 'package:the_plug/screens/home_screen.dart';
import 'package:the_plug/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "loginscreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obSecureText = false;
  // String _email, _password;
  // final _formKey = GlobalKey<FormState>();
  // final _scaffoldkey = GlobalKey<ScaffoldState>();
  _toggle() {
    setState(() {
      _obSecureText = !_obSecureText;
    });
  }

  // _submit() {
  //   if (_formKey.currentState.validate()) {
  //     _formKey.currentState.save();
  //     AuthService.login(context, _email, _password);
  //   }
  // }
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
        // validator: (password) =>
        // password.length < 6 ? "Must be atleast six characters" : null,
        // onSaved: (password) => _password = password,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.lightGreenAccent,
        body: SafeArea(
          child: SingleChildScrollView(
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
                  'User Login',
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
                        _showEmailInput(),
                        _showPasswordInput(),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          // width: 340.0,
                          // height: 45.0,
                          child: RaisedButton(
                            child: Text("Login"),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.lightGreenAccent,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.id);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have and Account?"),
                            FlatButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, RegisterScreen.id);
                                },
                                child: Text('Register')),
                          ],
                        ),
                      ],
                    ))
                /*
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    _submit();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePageScreen();
                        },
                      ),
                    );
                  },
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
