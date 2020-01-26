import 'package:flutter/material.dart';
import 'contact_card_icon.dart';
import 'package:contact_card/models/contact_card.dart';


class ContactCardView extends StatelessWidget {
  ContactCardView({this.backgroundImage, this.webAddress,
    this.companyName, this.phoneNumber, this.emailAddress});


  final String webAddress;
  final String phoneNumber;
  final String companyName;
  final String emailAddress;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: 320.0,
      child: Container(
        child: Stack(
          children: [
            Card(
              margin: EdgeInsets.only(top: 20.0, left: 20.0,),
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
              child: Container(
                height: 180.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(backgroundImage),
                    alignment: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: ContactCardIcon(
                          icon: Icons.phone,),
                        onTap: (){
                          print(phoneNumber);
                          },
                      ),
                      GestureDetector(
                        child: ContactCardIcon(
                          icon: Icons.web,),
                        onTap: (){
                          print(webAddress);
                          },
                      ),
                      GestureDetector(
                        child: ContactCardIcon(
                          icon: Icons.email,),
                        onTap: (){
                          print(emailAddress);
                          },
                      ),
                      GestureDetector(
                        child: ContactCardIcon(
                          icon: Icons.message,),
                        onTap: (){print(phoneNumber);
                        },
                      ),
                    ],
                  ),
                ],
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
    );
  }
}

class ContactCardController {
  Future<List<ContactCardView>> getContactCards() async {
    //TODO get contact cards from fireBase utilizing a list of received UUIDs. and remove dummy data
    List<ContactCardView> receivedContacts = [
      ContactCardView(
        webAddress: 'www.business.com',
        companyName: 'TestCompany',
        emailAddress: 'testcompany@email.com',
        phoneNumber: '444-454-4544',
        backgroundImage: 'https://media.istockphoto.com/vectors/dummy-credit-card-vector-id479514596?s=170667a',
      ),
      ContactCardView(
        webAddress: 'www.hello.com',
        companyName: 'here we go again',
        emailAddress: 'email@email.com',
        phoneNumber: '323-345-5234',
        backgroundImage: 'https://i.ytimg.com/vi/0WLk9beInNM/maxresdefault.jpg',
      ),
      ContactCardView(
          webAddress: 'www.grammy.com',
          companyName: 'grammys cookies',
          emailAddress: 'grammy@email.com',
          phoneNumber: '366-754-6567',
          backgroundImage: 'https://ampforwp.com/wp-content/uploads/2018/06/dfp-2x.png'
      ),
      ContactCardView(
          webAddress: 'www.bubble.com',
          companyName: 'bubble cookies',
          emailAddress: 'bubble@email.com',
          phoneNumber: '366-754-2445',
          backgroundImage: 'http://media02.hongkiat.com/free-businesscard-templates/10-Front.jpg'
      ),
    ];
    return receivedContacts;
  }
}
