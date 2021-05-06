import 'package:flutter/material.dart';
import 'package:the_plug/screens/shop_one.dart';

class ProductCategoryTwo extends StatefulWidget {
  @override
  _ProductCategoryTwoState createState() => _ProductCategoryTwoState();
}

class _ProductCategoryTwoState extends State<ProductCategoryTwo> {
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
                      MaterialPageRoute(builder: (context) => ShopOne()),
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
                                  "assets/images/fa2be1abdbc3b3da56909c65a8e083c0.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "A&W Dispensary",
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
                                    'assets/images/ab647a2b17761001534b11add16b547b.jpg')),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sally's Weed Dispensary",
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
                                  'assets/images/29d460bb13a233577f6f335d0a1f1200.jpg'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Spirit of the leaf",
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
