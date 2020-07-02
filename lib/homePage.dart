import 'package:flutter/material.dart';

import 'payment/check.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
            child: Text("Razor Payment Integration"),
          )),
      body: Center(
        child: Container(
          child: RaisedButton(
            color: Colors.green,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => CheckRazor(),
              ),
              (Route<dynamic> route) => false,
            ),
            child: Text(
              "Pay Now",
            ),
          ),
        ),
      ),
    );
  }
}
