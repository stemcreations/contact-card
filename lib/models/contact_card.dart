import 'package:uuid/uuid.dart';

class ContactCard {
  ContactCard({this.backgroundImage, this.webAddress,
  this.companyName, this.phoneNumber, this.emailAddress});

  final uuid = Uuid().v1();
  final String webAddress;
  final String companyName;
  final String emailAddress;
  final String phoneNumber;
  final String backgroundImage;
  //final CircleAvatar profileImage;

}
//
//this.profileImage,