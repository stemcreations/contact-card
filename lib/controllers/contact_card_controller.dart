import 'package:flutter/material.dart';
import 'contact_card_icon.dart';

class ContactCard extends StatelessWidget {
  ContactCard({this.emailAddress, this.phoneNumber, this.companyName,
    this.webAddress, this.backgroundImage, this.profileImage});

  final String webAddress;
  final String companyName;
  final String emailAddress;
  final String phoneNumber;
  final Image backgroundImage;
  final CircleAvatar profileImage;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ContactCardView extends StatelessWidget {
  //TODO add gesture detectors to icons and move them for better view on Contact Cards Screen

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 200.0,
        width: 320.0,
        child: Container(
          child: Stack(
            children: [
              Card(
                margin: EdgeInsets.only(top: 20.0, left: 20.0,),
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('http://media02.hongkiat.com/free-businesscard-templates/10-Front.jpg')), //TODO initialize variable for background Image
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ContactCardIcon(icon: Icons.web,), //TODO initialize variable for web address
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ContactCardIcon(icon: Icons.phone,), //TODO initialize variable for phone number
                          ContactCardIcon(icon: Icons.email,), //TODO initialize variable for email address
                          ContactCardIcon(icon: Icons.message,), //TODO use phone number to send message
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Material(
                    child: CircleAvatar(
                      child: Icon(Icons.person), //TODO change to image that can be picked or taken
                      radius: 35.0,
                    ),
                    elevation: 5.0,
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
