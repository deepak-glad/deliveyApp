import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Reviews extends StatelessWidget {
  static const routeName = '/reviews-screen';

  @override
  Widget build(BuildContext context) {
    ratingContainer(String stars, int width) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              stars,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 15),
            Container(
              width: MediaQuery.of(context).size.width - width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.grey,
              ),
              child: Text(''),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Customer Feedback',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.black38,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '4.44',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'based on 23 ratings',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            ratingContainer('5 Stars', 120),
            ratingContainer('4 Stars', 150),
            ratingContainer('3 Stars', 200),
            ratingContainer('2 Stars', 250),
            ratingContainer('1 Stars', 300),
            Divider(color: Colors.black26),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text(
                  'What Customers Like',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.info_outline,
                  color: Colors.blueAccent,
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54, blurRadius: 2.0),
                  ]),
              child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      'FUN FACTS',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      '12 votes',
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54, blurRadius: 2.0),
                  ]),
              child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      'Great Value',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      '8 votes',
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54, blurRadius: 2.0),
                  ]),
              child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      'Good Behaviour',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      '9 votes',
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
