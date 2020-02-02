import 'package:contact_card/screens/create_coupon_screen.dart';
import 'package:flutter/material.dart';
import 'package:contact_card/controllers/contact_card_controller.dart';
import 'package:contact_card/constants.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: kAppBarTextColor,)
        ),
        backgroundColor: kAlternateAppBarColor,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: kAppBarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: ContactCardView(
                      isVisible: true,
                      avatarIcon: Icons.edit,
                      backgroundImage: 'http://media02.hongkiat.com/free-businesscard-templates/10-Front.jpg',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        elevation: 3.0,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CreateCouponScreen()));
                        },
                        color: Colors.white70,
                        child: Text('Create Coupon'),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Company Name:'
                    ),
                  ), //  Company Name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'First Name:'),
                        ),
                      ), //  First Name
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: TextField(
                            decoration: InputDecoration(labelText: 'Last Name:'),
                          )
                      ), //  Last Name
                    ],
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email Address:'),
                  ), //  Email Address
                  TextField(
                    keyboardType: TextInputType.url,
                    decoration: InputDecoration(labelText: 'Web Address:'),
                  ), //  Website
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'eg. 8005551234',
                      labelText: 'Phone Number'
                    ),
                  ), //  Phone Number
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Company Description:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                        elevation: 5.0,
                        onPressed: (){Navigator.pop(context);},
                        color: Colors.redAccent,
                        child: Text('Cancel'),
                      ),
                      MaterialButton(
                        elevation: 5.0,
                        onPressed: (){},
                        color: Colors.lightGreenAccent,
                        child: Text('Submit'),
                      ),
                    ],
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
