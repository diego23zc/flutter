import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return NavigationBar(
      onDestinationSelected: (index) {
        setState(
          () {
            currentPageIndex = index;
          },
        );
      },
      indicatorColor: themeColor.primaryColor,
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Messages',
        ),
      ],
    );
  }
}
