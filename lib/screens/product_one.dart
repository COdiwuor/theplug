import 'package:flutter/material.dart';
import 'package:the_plug/screens/first_screen.dart';

// import 'package:square_in_app_payments/in_app_payments.dart';
// import 'package:square_in_app_payments/models.dart';

class ProductOne extends StatefulWidget {
  //static final String id = "zerodestinationdetailsscreenzero";
  @override
  _ProductOneState createState() => _ProductOneState();
}

class _ProductOneState extends State<ProductOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weed",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //elevation: 10,
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/06e284f605f3cc30edc9a2befeddc389.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //elevation: 10,
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/06e284f605f3cc30edc9a2befeddc389.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/06e284f605f3cc30edc9a2befeddc389.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/06e284f605f3cc30edc9a2befeddc389.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/06e284f605f3cc30edc9a2befeddc389.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Divider(color: Colors.orangeAccent),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120),
            child: Text(
              'Cannabis.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0, left: 20.0),
            child: Text(
              "You can get a gram of cannabis at 5 dollars per gram.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Divider(
              color: Colors.orangeAccent,
            ),
          ),
          Icon(Icons.shopping_cart_rounded),
        ]),
      ),
    );
  }

  // _payment() async {
  //   await InAppPayments.setSquareApplicationId('sq0idp-kX6Ph1lswQvG32zYw174iQ');
  //   await InAppPayments.startCardEntryFlow(
  //       onCardNonceRequestSuccess: (CardDetails result) {
  //         try {
  //           result.nonce;
  //           print('Sucess');
  //           InAppPayments.completeCardEntry(
  //               onCardEntryComplete: () =>
  //                   Navigator.pushNamed(context, TravelScreen.id));
  //         } catch (ex) {
  //           InAppPayments.showCardNonceProcessingError(ex.toString());
  //         }
  //       },
  //       onCardEntryCancel: () {});
  //   //ExpandingBottomSheet.of(context).close();
  // }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.orange,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
