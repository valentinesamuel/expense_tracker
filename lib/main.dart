import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        amount: 12.99, date: DateTime.now(), id: 't1', title: 'Clothes'),
    Transaction(amount: 19.99, date: DateTime.now(), id: 't2', title: 'Food'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'CHART!!',
                  style: TextStyle(fontSize: 20),
                ),
                elevation: 8.0,
                color: Colors.blue,
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Row(children: [
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '\$${tx.amount}',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(tx.date.toString(),
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    )
                  ]),
                  elevation: 3,
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
