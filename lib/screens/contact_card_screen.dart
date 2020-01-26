import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contact_card/constants.dart';
import 'package:contact_card/controllers/contact_card_controller.dart';


class ContactCardScreen extends StatefulWidget {
  @override
  _ContactCardScreenState createState() => _ContactCardScreenState();
}

class _ContactCardScreenState extends State<ContactCardScreen> {

  List<ContactCardView> receivedContacts = [];

  @override
  void initState() {
    getContacts();
    super.initState();
  }

  void getContacts() async {
    receivedContacts = await ContactCardController().getContactCards();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAlternateAppBarColor,
        title: Text(
          'Contact Cards',
          style: TextStyle(
            color: kAppBarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: ContactCardListView(
        listItemCards: receivedContacts,
        itemCount: receivedContacts.length,
      ),
    );
  }
}

class ContactCardListView extends StatelessWidget {
  ContactCardListView({this.listItemCards, this.itemCount});

  final List<Widget> listItemCards;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 7.0, top: 20.0, left: 5.0),
          child: SizedBox(
            width: 320.0,
            child: Column(
              children: <Widget>[
                ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: itemCount,
                  itemBuilder: (context, index){
                    return listItemCards[index];
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
