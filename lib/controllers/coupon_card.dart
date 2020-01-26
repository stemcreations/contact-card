import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Card(
        color: Colors.blue,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: SizedBox(
          height: 175,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text('Hello'),
            ),
          ),
        ),
      ),
    );
  }
}