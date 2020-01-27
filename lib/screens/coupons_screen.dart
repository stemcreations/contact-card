import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';
import 'package:contact_card/controllers/coupon_card.dart';

class CouponsScreen extends StatefulWidget {
  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {

  List<Widget> contactCoupons = [
    CouponCard(
      companyName: 'Dev Tech Hub',
      couponCode: '25OFF',
      couponOffer: '25% OFF',
      offerDetails: '25% off any item',
      expirationDate: '02/28/2020',
    ),
    CouponCard(
      companyName: 'Grub Hub',
      couponCode: '25OFF',
      couponOffer: '25% OFF',
      offerDetails: '25% off any item this is a test to see if it overflows I guess it is working but how well does it work',
      expirationDate: '02/28/2020',
    ),
    CouponCard(
      companyName: 'Hello Dolly',
      couponCode: '25OFF',
      couponOffer: '25% OFF',
      offerDetails: '25% off any item',
      expirationDate: '02/28/2020',),
    CouponCard(
      companyName: 'Lonny Boys',
      couponCode: '25OFF',
      couponOffer: '25% OFF',
      offerDetails: '25% off any item',
      expirationDate: '02/28/2020',),
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


