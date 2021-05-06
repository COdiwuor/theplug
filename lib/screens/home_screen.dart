import 'package:flutter/material.dart';
import 'package:the_plug/screens/first_screen.dart';
import 'package:the_plug/screens/delivery_screen.dart';
import 'package:the_plug/screens/user_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  static final String id = "homescreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _seletedItem = 0;
  var _pages = [FirstScreen(), DeliveryScreen(), UserScreen()];
  var _pageController = PageController();
  // int selectedPage = 0;

  // final _pageOptions = [
  //   HomeScreen(),
  //   ShoppingScreen(),
  //   UserScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _seletedItem = index;
            });
          },
          controller: _pageController,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining), title: Text('Delivery')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Profile'))
          ],
          currentIndex: _seletedItem,
          onTap: (index) {
            setState(() {
              _seletedItem = index;
              _pageController.animateToPage(_seletedItem,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          },
        ),
        // body: SafeArea(
        //   child: Column(
        //     children: [
        //       Row(
        //         children: [
        //           Container(
        //             child: Padding(
        //               padding: const EdgeInsets.all(20.0),
        //               child: Text(
        //                 "What would you like to find?",
        //                 style: TextStyle(
        //                     fontSize: 17.0, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       SizedBox(height: 10.0),
        //       Row(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Text(
        //               "Categories",
        //               style: TextStyle(
        //                   fontSize: 15.0, fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //           SizedBox(width: 5.0),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Text(
        //               "Top Deals",
        //               style: TextStyle(
        //                   fontSize: 15.0, fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //         ],
        //       ),
        //       SizedBox(
        //           height: 20.0,
        //           child: Divider(
        //             color: Colors.green,
        //           )),
        //     ],
        //   ),
        // ),
        // body: _pageOptions[selectedPage],
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home,
        //         size: 30,
        //       ),
        //       title: Text('Home'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_cart_rounded, size: 30),
        //       title: Text('Cart'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_circle, size: 30),
        //       title: Text('User'),
        //     ),
        //   ],
        //   selectedItemColor: Colors.green,
        //   elevation: 5.0,
        //   unselectedItemColor: Colors.green[900],
        //   currentIndex: selectedPage,
        //   backgroundColor: Colors.white,
        //   onTap: (index) {
        //     setState(() {
        //       selectedPage = index;
        //     });
        //   },
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home,
        //       ),
        //       title: Text('Home'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_cart_outlined),
        //       title: Text('Cart'),
        //     ),
        //     // BottomNavigationBarItem(
        //     //   icon: Icon(Icons.payment_rounded),
        //     //   title: Text('Pay'),
        //     // ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.supervised_user_circle_rounded),
        //       title: Text('User'),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
