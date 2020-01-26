import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';
import 'package:contact_card/controllers/coupon_card.dart';

class CouponsScreen extends StatefulWidget {
  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {

  List<Widget> contactCoupons = [
    CouponCard(),
    CouponCard(),
    CouponCard(),
    CouponCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAlternateAppBarColor,
        title: Text(
          'Coupons',
          style: TextStyle(
            color: kAppBarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 325,
          child: ListView.builder(
            itemCount:  contactCoupons.length,
            itemBuilder: (context, index){
              return contactCoupons[index];
            }
          ),
        ),
      ),
    );
  }
}


