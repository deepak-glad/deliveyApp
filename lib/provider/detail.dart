import 'package:delivery_app/model/data.dart';
import 'package:flutter/material.dart';

class Detail with ChangeNotifier {
  List<Database> _list = [
    Database(
      id: '1',
      storeAddress: 'Los Anglis',
      destinationAdrress: 'PPM Raebareli',
      pickTime: '1:00 PM',
      deliveryTime: '4:00 PM',
      dist: 4.0,
      date: '2021-01-05',
    ),
    Database(
      id: '2',
      storeAddress: 'Adarsh Super Market, Bakti nagar road, Adajan, Surat',
      destinationAdrress: 'A-58, Valam nagar Soc,Varacjhan,Surat',
      pickTime: '10:00 AM',
      deliveryTime: '12:00 PM',
      dist: 10.0,
      date: '2020-02-20',
    ),
    Database(
      id: '3',
      storeAddress:
          'Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - United Arab Emirates',
      destinationAdrress:
          '66 Al Marsa St - Dubai Marina - Dubai - United Arab Emirates',
      pickTime: '11:00 AM',
      deliveryTime: '8:00 PM',
      dist: 15.0,
      date: '2020-12-30',
    ),
    Database(
      id: '4',
      storeAddress:
          'Al Ohood Street - Sheikh Mohammed bin Rashid Blvd - Dubai - United Arab Emirates',
      destinationAdrress:
          'ارع المركز المالي، - Downtown Dubai - Dubai - United Arab Emirates',
      pickTime: '8:00 AM',
      deliveryTime: '4:00 PM',
      dist: 8.0,
      // date: 2021-01-01,
    )
  ];

  List<Database> get list {
    return [..._list];
  }
}
