import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static final String id = "userscreen";
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    //Map<String, String> args = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            "Welcome to The Plug",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("Hey")),
        //   ],
        // ),
        drawer: Container(
          color: Colors.orange,
          child: Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Name",
                    //"Name: ${args['name']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "Email",
                    //"Email: ${args['email']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/200",

                      // userInfo.profilePic
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text(
                    'Payments',
                    style: TextStyle(),
                  ),
                  onTap: () {
                    // // Navigator.pushNamed(context, MyHomePage.id);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => MyHomePage()));
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.car_rental),
                  title: Text(
                    "Orders",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    // // Navigator.pushNamed(context, MyHomePage.id);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         //builder: (BuildContext context) => Showroom()));
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                Divider(),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.card_membership),
                  title: Text("Promotions"),
                  onTap: () {
                    // Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    //  AuthService.logout(context);
                  },
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            // physics:
            //NeverScrollableScrollPhysics(), //allows the whole screen to be efficiently scrollable apart from one particular screen
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Terms and Conditions",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  "More About Us",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
