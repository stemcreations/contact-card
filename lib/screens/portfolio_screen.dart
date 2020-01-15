import 'package:flutter/material.dart';
import 'package:contact_card/controllers/contact_card_controller.dart';
import 'package:contact_card/constants.dart';

class PortfolioScreen extends StatefulWidget{
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> with TickerProviderStateMixin {

  String qrCode = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppThemeColor,
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ContactCardView(),
                Flexible(
                  child: SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: Image.network(qrCode),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



