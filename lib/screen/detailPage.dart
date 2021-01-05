import 'package:delivery_app/provider/detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  static const routename = '/detail-page';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    var detail = Provider.of<Detail>(context);
    // print(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OrderNumber $productId',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: detail.list.length,
          itemBuilder: (context, index) {
            if (detail.list[index].id == productId) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(15),
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    'Name:',
                                  ),
                                  // Text('PANT OF RD COLOUR'),
                                  SizedBox(height: 15),
                                  Text('Price:')
                                ],
                              ),
                            ),
                          ],
                        )),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Text(
                            'Order PickUp Time',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.time_to_leave_outlined),
                              Text(detail.list[index].pickTime,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        ]),
                        Column(children: [
                          Text(
                            'Delivery Time',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.time_to_leave),
                              Text(detail.list[index].deliveryTime,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Store Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Row(children: [
                      Icon(
                        Icons.location_on,
                        color: Theme.of(context).cardColor,
                      ),
                      Flexible(
                        child: Text(detail.list[index].storeAddress,
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Text(
                      'User Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Theme.of(context).cardColor,
                        ),
                        Flexible(
                          child: Text(detail.list[index].destinationAdrress,
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                            minWidth: 100,
                            color: Colors.green,
                            child: Text(
                              'PICKED',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () {},
                          ),
                          FlatButton(
                            minWidth: 100,
                            color: Colors.blue,
                            child: Text(
                              'HANDOVER',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () {},
                          ),
                          FlatButton(
                            minWidth: 100,
                            color: Colors.red,
                            child: Text(
                              'DELIVERED',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.all(15), child: Text('Map')),
                  ],
                ),
              );
            }
            return Container(
                // child: Text(detail.list[index].destinationAdrress),
                );
          }),
    );
  }
}
