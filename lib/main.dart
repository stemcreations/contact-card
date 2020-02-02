import 'package:flutter/material.dart';
import 'package:contact_card/controllers/bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Card',
      home: CustomBottomNavigationBar(),
    );
  }
}

