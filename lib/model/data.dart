import 'package:flutter/foundation.dart';

class Database {
  final String id;
  final String storeAddress;
  final String destinationAdrress;
  final String pickTime;
  final String deliveryTime;
  final double dist;
  final String date;

  Database({
    @required this.id,
    @required this.deliveryTime,
    @required this.destinationAdrress,
    @required this.pickTime,
    @required this.storeAddress,
    @required this.dist,
    this.date,
  });
}
