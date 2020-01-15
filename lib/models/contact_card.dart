import 'package:flutter/material.dart';

class ContactCard {
  ContactCard({this.profileImage, this.backgroundImage, this.webAddress,
  this.companyName, this.phoneNumber, this.emailAddress});

  final String webAddress;
  final String companyName;
  final String emailAddress;
  final String phoneNumber;
  final Image backgroundImage;
  final CircleAvatar profileImage;

}