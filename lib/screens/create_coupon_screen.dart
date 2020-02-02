import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';
import 'package:contact_card/controllers/coupon_card.dart';

String companyName = 'Test Company';
String couponCode = 'TESTCODE';
String couponOffer = '25% OFF';
String offerDetails = '25% off any non-sale item.';
String expirationDate = '11/11/20';

class CreateCouponScreen extends StatefulWidget {

  @override
  _CreateCouponScreenState createState() => _CreateCouponScreenState();
}

class _CreateCouponScreenState extends State<CreateCouponScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back, color: kAppBarTextColor,)
        ),
        backgroundColor: kAlternateAppBarColor,
        title: Text(
          'Create Coupon',
          style: TextStyle(
            color: kAppBarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 331,
            child: Padding(
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CouponCard(
                    companyName: companyName,
                    couponOffer: couponOffer,
                    couponCode: couponCode,
                    expirationDate: expirationDate,
                    offerDetails: offerDetails,
                  ),
                  TextField(
                    maxLength: 20,
                    decoration: InputDecoration(labelText: 'Company Name:'),
                    onChanged: (value) {
                      setState(() {
                        companyName = value;
                      });
                    },
                  ),
                  TextField(
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: 'Coupon Code:',
                        hintText: 'eg. 25OFF'
                    ),
                    onChanged: (value) {
                      setState(() {
                        couponCode = value;
                      });
                    },
                  ),
                  TextField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: 'Coupon Offer:',
                      hintText: 'eg. 25% OFF'
                    ),
                    onChanged: (value) {
                      setState(() {
                        couponOffer = value;
                      });
                    },
                  ),
                  TextField(
                    maxLength: 60,
                    decoration: InputDecoration(
                      labelText: 'Offer Details:'
                    ),
                    onChanged: (value) {
                      setState(() {
                        offerDetails = value;
                      });
                    },
                  ),
                  TextField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: 'Expiration Date:',
                      hintText: 'eg. 01/01/2020'
                    ),
                    onChanged: (value) {
                      setState(() {
                        expirationDate = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        elevation: 5.0,
                        onPressed: (){Navigator.pop(context);},
                        color: Colors.redAccent,
                        child: Text('Cancel'),
                      ),
                      MaterialButton(
                        elevation: 5.0,
                        onPressed: (){},
                        color: Colors.lightGreenAccent,
                        child: Text('Submit'),
                      ),
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
