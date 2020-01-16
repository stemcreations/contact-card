import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';
import 'package:contact_card/controllers/contact_card_controller.dart';

class ContactCardScreen extends StatefulWidget {
  @override
  _ContactCardScreenState createState() => _ContactCardScreenState();
}

class _ContactCardScreenState extends State<ContactCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppThemeColor,
        title: Text(
          'Contact Cards',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 22.0, top: 20.0),
            child: SizedBox(
              width: 320.0,
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return ContactCardView();
                    }
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
