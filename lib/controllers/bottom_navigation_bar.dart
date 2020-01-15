import 'package:flutter/material.dart';
import 'package:contact_card/screens/analytics_screen.dart';
import 'package:contact_card/screens/portfolio_screen.dart';
import 'package:contact_card/screens/contact_card_screen.dart';
import 'package:contact_card/constants.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentTabIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int tab){
    setState(() {
      this._currentTabIndex = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _kTabPages = [
      PortfolioScreen(),
      AnalyticsScreen(),
      ContactCardScreen(),
    ];

    final _kBottomNavigationBarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
      BottomNavigationBarItem(icon: Icon(Icons.show_chart), title: Text('Analytics')),
      BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('Cards')),
    ];
    assert(_kBottomNavigationBarItems.length == _kTabPages.length);

    return Scaffold(
      body: PageView(
        children: <Widget>[
          PortfolioScreen(),
          AnalyticsScreen(),
          ContactCardScreen(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: SizedBox(
        height: 60.0,
        width: double.infinity,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          backgroundColor: kAppThemeColor,
          items: _kBottomNavigationBarItems,
          currentIndex: _currentTabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _currentTabIndex = index;
            });
          },
        ),
      ),
    );
  }
}
