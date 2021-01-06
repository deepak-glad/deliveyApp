import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  static const routeName = '/profile_detail';
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).cardColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              // height: 50,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/dummyprofile.jpg'),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NAME',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                    )
                  ]),
              child: Text(
                'DEEPAK KUMAR YADAV',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 18),
            Text(
              'EMAIL',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                    )
                  ]),
              child: Text(
                'deepakyadav1025@gmail.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Mobile Number',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                    )
                  ]),
              child: Text(
                '+55985205005',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // color: Colors.black,
              margin:
                  h < 553 ? null : const EdgeInsets.only(top: 150, left: 200),

              child: FlatButton(
                color: Theme.of(context).cardColor,
                child: Text('Request to change'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
