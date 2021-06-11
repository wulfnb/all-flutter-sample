import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 1, title: 'Grocerry', amount: 5.2, date: DateTime.now()),
    Transaction(id: 1, title: 'Apple', amount: 6.2, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Card(
                child: Text('Chart'),
                color: Colors.blue,
              ),
              width: double.infinity,
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                    child: Row(children: [
                  Container(
                    child: Text(tx.amount.toString()),
                  ),
                  Column(
                    children: [Text(tx.title), Text(tx.date.toString())],
                  ),
                ]));
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
