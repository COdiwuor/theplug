import 'package:flutter/material.dart';
import 'package:the_plug/screens/snack_one.dart';

class ProductCategoryOne extends StatefulWidget {
  @override
  _ProductCategoryOneState createState() => _ProductCategoryOneState();
}

class _ProductCategoryOneState extends State<ProductCategoryOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          height: 280.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                width: 180.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SnackOne()),
                    );
                  },
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) =>
                  //               ZeroDestinationDetailsScreenZero()));
                  // },
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        child: Container(
                          height: 200.0,
                          //we had a width
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/d23b76d5c5ffda9087f921f1e8508306.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Weed Sweet gummies",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) =>
                    //             ZeroDestinationDetailsScreenOne()));
                  },
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        child: Container(
                          height: 200.0,
                          width: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/44aedc51586cb401268a34fdc80ce4ca.jpg')),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Chocolate Edibles",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           ZeroDestinationDetailsScreenTwo()),
                    // );
                  },
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          height: 200.0,
                          width: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/35bcf2e12651701722e01684caab1832.jpg'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cannabis Butter",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
