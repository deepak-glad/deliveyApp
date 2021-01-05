import 'package:delivery_app/screen/history.dart';
import 'package:delivery_app/screen/profile.dart';
import 'package:delivery_app/widgets/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void onTabbedButton(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [Home(), MapPage(), Profile()];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,

          // toolbarHeight: 75,
          title: Text('Delivery',
              style: TextStyle(color: Theme.of(context).primaryColor)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).cardColor,
        ),
        // drawer: Drawerr(),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabbedButton,
          selectedItemColor: Theme.of(context).cardColor,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
    );
  }
}
