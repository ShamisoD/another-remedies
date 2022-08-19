import 'package:flutter/material.dart';
import 'package:remediesagain/cards/remediescard.dart';
import 'package:remediesagain/cards/welcomecard.dart';
import 'package:remediesagain/cards/contactscard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[

    // TODO: Replace with RecipesScreen
    WelcomeCard(),
    RemediesCard(),
    ContactCard(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'Remedies',
        //   style: Theme.of(context).textTheme.headline6,
        ),
      // ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.nature),
            label: 'Remedies',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: 'Contact Us',
          ),
        ],
      ),
    );
  }
}
