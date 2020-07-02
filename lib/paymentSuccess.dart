import 'package:flutter/material.dart';
import 'package:razorpay_example/homePage.dart';

import 'payment/razorpay_flutter.dart';

class SuccessPage extends StatelessWidget {
  final PaymentSuccessResponse response;
  SuccessPage({
    @required this.response,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Payment Success"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Your payment is successful and the response is\n OrderId: ${response.orderId}\nPaymentId: ${response.paymentId}\nSignature: ${response.signature}",
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
