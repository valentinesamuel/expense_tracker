import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text('No child has been added yet!'),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                      height: 300,
                      child: Image.asset(
                        'assets/images/waiting.png',
                        fit: BoxFit.cover,
                      ))
                ],
              )
            : ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Row(children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$${transactions[index].amount.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transactions[index].title,
                                style: Theme.of(context).textTheme.headline6),
                            Text(DateFormat().format(transactions[index].date),
                                style: TextStyle(color: Colors.grey))
                          ],
                        ),
                      )
                    ]),
                    elevation: 3,
                  );
                },
                //     children: transactions.map((tx) {
                // return
                //     }).toList(),
              ));
  }
}
