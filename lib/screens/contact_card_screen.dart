import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';

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
    );
  }
}
