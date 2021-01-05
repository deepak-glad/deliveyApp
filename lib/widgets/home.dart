import 'package:delivery_app/helper/datepicker.dart';
import 'package:delivery_app/helper/homeOverview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = ["TODAY TASK", "ALL TASK"];
  Widget builCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          // margin: EdgeInsets.only(right: 80),
          child: Text(
            categories[index],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: selectedIndex == index
                    ? Theme.of(context).cardColor
                    : Colors.grey),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 4,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? Theme.of(context).cardColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ]),
    );
  }

  var isToggled = false;
  var newFormat = DateFormat.yMMMEd().format(DateTime.now());
  var selectedIndex = 0;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40,
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
              child: DatePicker(),
            ),
          ),
          SizedBox(
            // height: 100,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return builCategory(index);
                }),
          ),
          selectedIndex == 0 ? HomeOverview() : Container(),
        ],
      ),
    );
  }
}
