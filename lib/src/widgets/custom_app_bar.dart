import 'package:flight_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CustomAppBar() {
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Constants.lightGreyColor,
        ),
        label: 'Explore',
        activeIcon: Icon(
          Icons.home,
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Constants.lightGreyColor,
        ),
        activeIcon: Icon(
          Icons.favorite,
        ),
        label: 'Watchlist'));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.local_offer,
          color: Constants.lightGreyColor,
        ),
        activeIcon: Icon(
          Icons.local_offer,
        ),
        label: 'Deals'));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Constants.lightGreyColor,
        ),
        activeIcon: Icon(
          Icons.notifications,
        ),
        label: 'Notifications'));
  }

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      child: BottomNavigationBar(
        items: widget.bottomBarItems,
        onTap: (i) => setState(() => _currentIndex = i),
        currentIndex: _currentIndex,
        selectedItemColor: Constants.secondaryColor,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
