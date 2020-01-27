import 'package:contact_card/constants.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  CouponCard({this.companyName, this.couponCode, this.couponOffer, this.expirationDate, this.offerDetails});

  final String couponCode;
  final String couponOffer;
  final String offerDetails;
  final String expirationDate;
  final String companyName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Card(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: SizedBox(
          height: 175,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0, bottom: 5.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    companyName,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Coupon Code: ',
                        style: kCouponCodeStyle
                      ),
                      Text(couponCode, style: kCouponCodeStyle,),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(couponOffer, style: kCouponOfferStyle, textAlign: TextAlign.center,),
                    ],
                  ),
                  Text(offerDetails, textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Offer Expires: '),
                      Text(expirationDate),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}