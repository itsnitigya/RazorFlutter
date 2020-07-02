import 'package:flutter/material.dart';
import 'package:razorpay_example/homePage.dart';

import 'payment/razorpay_flutter.dart';

class FailedPage extends StatelessWidget {
  final PaymentFailureResponse response;
  FailedPage({
    @required this.response,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
            child: Text("Payment Failed"),
          )),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Your payment is Failed and the response is\n Code: ${response.code}\nMessage: ${response.message}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              color: Colors.green,
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false,
              ),
              child: Text(
                "Try Again",
              ),
            ),
          ),
        ],
      )),
    );
  }
}
