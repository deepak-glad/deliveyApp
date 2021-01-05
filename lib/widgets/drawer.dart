import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

class Drawerr extends StatelessWidget {
  // _buildValue(String name, String iconname,String routnm) {
  //   return ListTile(
  //               title: Text(
  //                 name,
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 19),
  //               ),
  //               leading: Icon(Icons.history, color: Colors.white, size: 35),
  //               onTap: () {},
  //             );
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Colors.yellow,
                ],
              ),
            ),
            child: CircleAvatar(),
          ),
          // SizedBox(height: 25),
          // CurvedShape(),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black87,
                  Colors.grey,
                ],
              ),
            ),
            child: Column(children: [
              SizedBox(height: 25),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading:
                    Icon(Icons.home_outlined, color: Colors.white, size: 35),
                onTap: () {},
              ),
              SizedBox(height: 18),
              ListTile(
                title: Text(
                  'Order History',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading: Icon(Icons.history, color: Colors.white, size: 35),
                onTap: () {},
              ),
              SizedBox(height: 18),
              ListTile(
                title: Text(
                  'Earnings',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading: Icon(
                  Icons.attach_money_sharp,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {},
              ),
              SizedBox(height: 18),
              ListTile(
                title: Text(
                  'Help',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading: Icon(
                  Icons.live_help_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {},
              ),
              SizedBox(height: 18),
              ListTile(
                title: Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {},
              ),
              SizedBox(height: 18),
              ListTile(
                title: Text(
                  'Invite Friends',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                leading: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: CURVE_HEIGHT,
      child: CustomPaint(
        painter: _MyPainter(),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.purple[700];

    Offset circleCenter = Offset(size.width / 2, size.height - AVATAR_RADIUS);

    Offset bottomLeft = Offset(0, 440);
    Offset topLeft = Offset(0, size.height * 0.25);
    Offset bottomRight = Offset(size.width, 501155);
    Offset topRight = Offset(size.width, size.height * 0.4);

    Offset leftCurveControlPoint =
        Offset(circleCenter.dx * 0.5, size.height - AVATAR_RADIUS * 1.5);
    Offset rightCurveControlPoint =
        Offset(circleCenter.dx * 1.6, size.height - AVATAR_RADIUS);

    final arcStartAngle = 200 / 180 * pi;
    final avatarLeftPointX =
        circleCenter.dx + AVATAR_RADIUS * cos(arcStartAngle);
    final avatarLeftPointY =
        circleCenter.dy + AVATAR_RADIUS * sin(arcStartAngle);
    Offset avatarLeftPoint =
        Offset(avatarLeftPointX, avatarLeftPointY); // the left point of the arc

    final arcEndAngle = -5 / 180 * pi;
    final avatarRightPointX =
        circleCenter.dx + AVATAR_RADIUS * cos(arcEndAngle);
    final avatarRightPointY =
        circleCenter.dy + AVATAR_RADIUS * sin(arcEndAngle);
    Offset avatarRightPoint = Offset(
        avatarRightPointX, avatarRightPointY); // the right point of the arc

    Path path = Path()
      ..moveTo(topLeft.dx,
          topLeft.dy) // this move isn't required since the start point is (0,0)
      ..lineTo(bottomLeft.dx, bottomLeft.dy)
      ..quadraticBezierTo(leftCurveControlPoint.dx, leftCurveControlPoint.dy,
          avatarLeftPoint.dx, avatarLeftPoint.dy)
      ..arcToPoint(avatarRightPoint, radius: Radius.circular(AVATAR_RADIUS))
      ..quadraticBezierTo(rightCurveControlPoint.dx, rightCurveControlPoint.dy,
          bottomRight.dx, bottomRight.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
