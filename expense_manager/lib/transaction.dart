import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double amount;
  final DateTime date;

  // Transaction(
  //     {@required this.id,
  //     this.title = "Default tilt",
  //     this.amount = 0.0,
  //     this.date = DateTime.now()});
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date
  });

}
