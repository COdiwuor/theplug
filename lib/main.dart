import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_plug/screens/getting_started_screen.dart';
import 'package:the_plug/screens/home_screen.dart';
import 'package:the_plug/screens/login_screen.dart';
import 'package:the_plug/screens/register_screen.dart';
import 'package:the_plug/screens/delivery_screen.dart';
import 'package:the_plug/screens/splash_screen.dart';
import 'package:the_plug/screens/user_screen.dart';
// import 'package:the_plug/screens/welcome_screen.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(MyApp());
  // });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Plug",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        GettingStartedScreen.id: (context) => GettingStartedScreen(),
        // WelcomeScreen.id: (context) => WelcomeScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        UserScreen.id: (context) => UserScreen(),
        DeliveryScreen.id: (context) => DeliveryScreen(),
      },
    );
  }
}
