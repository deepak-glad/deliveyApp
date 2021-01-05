import 'package:delivery_app/widgets/auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            color: Colors.black87,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
              color: Colors.black45,
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),
              child: Image.asset('assets/logoo.png')),
          // SizedBox(height: 50),
          AuthPage(),
        ],
      ),
    );
  }
}
