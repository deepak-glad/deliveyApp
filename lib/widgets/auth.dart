import 'package:delivery_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({
    Key key,
  }) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      margin: h < 553
          ? const EdgeInsets.only(top: 100, left: 40)
          : const EdgeInsets.only(top: 150, left: 50),
      height: h < 553 ? h : h / 2 + 20,
      width: MediaQuery.of(context).size.width * 3 / 4,
      // color: Colors.black,
      child: SizedBox(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      // color: Theme.of(context).cardColor,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    ' BACK',
                    style: TextStyle(
                      // color: Theme.of(context).cardColor,
                      color: Colors.deepOrange,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ]),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              key: ValueKey('username'),
              validator: (value) {
                if (value.isEmpty || value.length < 4) {
                  return 'Please enter atleast 4 characters ';
                }
                return null;
              },
              onSaved: (value) {
                // _username = value;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).cardColor,
                ),
                labelStyle: TextStyle(color: Colors.black54),
                labelText: 'USERNAME',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              key: ValueKey('password'),
              validator: (value) {
                if (value.isEmpty || value.length < 4) {
                  return 'Please enter atleast 4 characters ';
                }
                return null;
              },
              onSaved: (value) {
                // _username = value;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                icon: Icon(
                  Icons.lock_sharp,
                  color: Theme.of(context).cardColor,
                ),
                labelStyle: TextStyle(color: Colors.black54),
                labelText: 'Password',
              ),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Theme.of(context).cardColor,
                  value: this.valuefirst,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuefirst = value;
                    });
                  },
                ),
                Text(
                  'Remember me!',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            // SizedBox(height: 25),
            FlatButton(
                minWidth: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).cardColor,
                // hoverColor: Theme.of(context).cardColor,
                child: Text('LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                onPressed: () {
                  Navigator.of(context).pushNamed(HomePage.routeName);
                }),
            SizedBox(height: 5),
            Text('Please login for next steps'),
          ],
        ),
      ),
    );
  }
}
