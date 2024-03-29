import 'package:flutter/material.dart';

class ContactCardIcon extends StatelessWidget {
  ContactCardIcon({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 2.5, bottom: 2.5),
          child: Icon(icon, size: 30.0,),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Colors.white54,
        elevation: 5.0,
      ),
    );
  }
}