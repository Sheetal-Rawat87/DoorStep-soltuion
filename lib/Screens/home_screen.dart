import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  int _currentIndex=0;

  final tabs=[
    Center(child: Text('Home')),
    Center(child: Text('No Booking Available')),
    Center(child: Text('Help Center')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DoorStep Solution'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
        backgroundColor: Colors.indigo

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.library_books_outlined),
    label: 'Bookings',
        backgroundColor: Colors.indigo
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.help_outline_rounded),
    label: 'Help Center',
        backgroundColor: Colors.indigo
    ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
            backgroundColor: Colors.indigo
        ),
    ],
        onTap: (index){
        setState(() {
          _currentIndex = index;
        });
        },

    ),
    );
  }
}
