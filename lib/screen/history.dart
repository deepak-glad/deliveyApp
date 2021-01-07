import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  body(String firstdetail, String lastdetail, FontWeight font) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              firstdetail,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Center(
            child: Text(
              " : ",
              style: TextStyle(fontSize: 20, fontWeight: font),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: new Text(
              lastdetail,
              style: TextStyle(fontSize: 20, fontWeight: font),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY ORDERS DELIVERED'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            // height: 52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                body('Order id', 'GFVHBJK52', FontWeight.bold),
                SizedBox(height: 8),
                body('Customer name', 'Deepak kumar', FontWeight.bold),
                SizedBox(height: 8),
                body('Order Type', 'COD', FontWeight.bold),
                SizedBox(height: 8),
                body('Date Time', '12/02/2020', FontWeight.normal),
                SizedBox(height: 8),
                body('status', 'Pending...', FontWeight.bold),
                SizedBox(height: 8),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            // height: 52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                body('Order id', '4552SDS', FontWeight.bold),
                SizedBox(height: 8),
                body('Customer name', 'Ravi', FontWeight.bold),
                SizedBox(height: 8),
                body('Order Type', 'ONLINE PAYMENT', FontWeight.bold),
                SizedBox(height: 8),
                body('Date Time', '01/01/2021', FontWeight.normal),
                SizedBox(height: 8),
                body('status', 'Confirm', FontWeight.bold),
                SizedBox(height: 8),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
