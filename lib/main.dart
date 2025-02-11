import 'package:delivery_app/provider/detail.dart';
import 'package:delivery_app/screen/contact_us.dart';
import 'package:delivery_app/screen/detailPage.dart';
import 'package:delivery_app/screen/home_screen.dart';
import 'package:delivery_app/screen/notification.dart';
import 'package:delivery_app/screen/profile_detail.dart';
import 'package:delivery_app/screen/reviews.dart';
import 'package:delivery_app/widgets/auth.dart';
import 'package:flutter/material.dart';
import 'screen/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Detail()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery APP',
        theme: ThemeData(
          primaryColor: Colors.white,
          cardColor: Colors.deepOrange,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        home: LoginPage(),
        routes: {
          HomePage.routeName: (ctx) => HomePage(),
          DetailPage.routename: (ctx) => DetailPage(),
          NotificationPage.routeName: (ctx) => NotificationPage(),
          ProfileDetail.routeName: (ctx) => ProfileDetail(),
          Reviews.routeName: (ctx) => Reviews(),
          ContactUs.routeName: (ctx) => ContactUs(),
        },
      ),
    );
  }
}
