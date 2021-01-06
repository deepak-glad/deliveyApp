import 'package:delivery_app/widgets/auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Theme.of(context).cardColor,
      ),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
              // color: Colors.black45,
              // height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Image.asset('assets/logo.png')),
          // SizedBox(height: 50),
          AuthPage(),
        ],
      ),
    );
  }
}
