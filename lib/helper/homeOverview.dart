import 'package:delivery_app/provider/detail.dart';
import 'package:delivery_app/screen/detailPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeOverview extends StatelessWidget {
  const HomeOverview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var detail = Provider.of<Detail>(context);
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: detail.list.length,
        itemBuilder: (context, index) {
          // print(detail.list[index].date==);
          // if (detail.list[index].date == DateTime.now())
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailPage.routename,
                  arguments: detail.list[index].id);
            },
            child: Container(
              margin: EdgeInsets.all(8),
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
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Store Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
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
                            fontSize: 15,
                          )),
                    ),
                  ]),
                  SizedBox(height: 10),
                  Text(
                    'User Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
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
                              fontSize: 15,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          'Order PickUp Time',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
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
                            fontWeight: FontWeight.w300,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Approx: ${detail.list[index].dist.toString()}',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      FlatButton(
                        color: Colors.green,
                        // shape: Border.all(color: Colors.black),
                        child: Text(
                          'DETAIL',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(DetailPage.routename,
                              arguments: detail.list[index].id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
