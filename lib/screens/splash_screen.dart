import 'package:flutter/material.dart';
import 'package:the_plug/screens/getting_started_screen.dart';
import 'dart:async';

import 'package:the_plug/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, GettingStartedScreen.id);
      //Navigator.pushNamed(context, LoginScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent[400],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Center(
                        //   child: Container(
                        //       width: 300,
                        //       height: 400,
                        //       child:
                        //           Image.asset("assets/images/Untitled-1.jpg")),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 180.0),
                          child: Center(
                            child: Text(
                              'The Plug',
                              style: TextStyle(
                                fontSize: 47.0,
                                color: Colors.black,
                                fontFamily: 'PatrickHand',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
