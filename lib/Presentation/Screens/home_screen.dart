import 'package:flutter/material.dart';
import 'package:flutter_application_2/Presentation/Screens/nav_bar_screen.dart';
import 'package:flutter_application_2/Presentation/Screens/options/pokemon_button.dart';
import 'package:flutter_application_2/Presentation/Screens/options/pokemon_chat.dart';
import 'package:flutter_application_2/Presentation/Screens/options/pokemon_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(context) {
    List<Widget> pages = [
      PokemonButton(),
      PokemonList(),
      PokemonChat(),
    ];
    final themeColor = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usando API de Pokemon'),
      ),
      bottomNavigationBar: NavigationBar(
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
      ),
      body: pages[currentPageIndex],
    );
  }
}
