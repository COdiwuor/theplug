import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  static final String id = "deliveryscreen";
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Track your edibles',
                  style: TextStyle(
                    fontFamily: 'PatrickHand',
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Center(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: ExactAssetImage(
                          'assets/images/dfee76067d7d27eba30d4128155751a9.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Fast and Safe",
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
                    color: Colors.orange.shade100,
                  ),
                ),
                RoundedButton(
                  text: "Track Rider",
                  press: () {},
                ),
                RoundedButton(
                  text: "Vendor Location",
                  textColor: Colors.black,
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//method for class RoundedButton
class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.greenAccent,
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
