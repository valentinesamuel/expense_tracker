import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List listOfTransactions;

  TransactionList({this.listOfTransactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listOfTransactions.map((tx) {
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(DateFormat().format(tx.date),
                      style: TextStyle(color: Colors.grey))
                ],
              ),
            )
          ]),
          elevation: 3,
        );
      }).toList(),
    );
  }
}
