import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NotificationPage extends StatefulWidget {
  static const routeName = '/notification_page';
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  var isToggled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text(
                'Do not disturbe',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12),
              ),
              SizedBox(width: 10),
              FlutterSwitch(
                height: 20.0,
                width: 40.0,
                padding: 4.0,
                toggleSize: 15.0,
                borderRadius: 10.0,
                activeColor: Colors.deepOrange,
                inactiveText: 'off',
                activeText: 'on',
                activeTextColor: Colors.black,
                value: isToggled,
                onToggle: (value) {
                  setState(() {
                    isToggled = value;
                  });
                },
              ),
            ]),
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  // offset:
                ),
              ]),
          child: ListTile(
            leading: Icon(Icons.notification_important_outlined),
            title: Text(
                'This is information for detail or notification page value'),
            subtitle: Text('Details and information'),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  // offset:
                ),
              ]),
          child: ListTile(
            leading: Icon(Icons.notification_important),
            title: Text(
                'You have new task assigned and your parsal has been dispatch'),
            subtitle: Text(
                'This is information for detail or notification page value'),
          ),
        ),
      ]),
    );
  }
}
