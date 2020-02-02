import 'package:contact_card/screens/edit_profile_screen.dart';
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
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAlternateAppBarColor,
        title: Text(
          'Profile',
          style: TextStyle(
            color: kAppBarTextColor,
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
                Flexible(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => EditProfileScreen()));
                    },
                    child: ContactCardView(
                      backgroundImage: 'http://media02.hongkiat.com/free-businesscard-templates/10-Front.jpg',
                ),
                  )),
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



