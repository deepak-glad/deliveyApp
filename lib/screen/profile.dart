import 'package:delivery_app/screen/profile_detail.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var m = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.5,
                      spreadRadius: 0.0,
                      offset: Offset(.0, 0.0))
                ]),
            height: m.height / 6,
            width: m.width,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dummyprofile.jpg'),
                  radius: 50,
                ),
                Container(
                  child: Text(
                    'Name',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  margin: EdgeInsets.all(18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User Info',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_pin,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text(
                    'Profile Detail',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ProfileDetail.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.rate_review,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text('Reviews'),
                  onTap: () {},
                ),
                Divider(color: Colors.black12),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' App',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_page,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text('Contact Us'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text('Setings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text('Privacy Policy'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.star_rate_outlined,
                    color: Theme.of(context).cardColor,
                    size: 30,
                  ),
                  title: Text('Rate This App'),
                  onTap: () {},
                ),
                Divider(color: Colors.black12),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: m.width / 2,
                  child: FlatButton(
                    child: Text('LogOut'),
                    color: Theme.of(context).cardColor,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1.0.0'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
