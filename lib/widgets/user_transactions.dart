import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _usersTransactions = [
    Transaction(
        amount: 12.99, date: DateTime.now(), id: 't1', title: 'Clothes'),
    Transaction(amount: 19.99, date: DateTime.now(), id: 't2', title: 'Food'),
  ];

 void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _usersTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTx:_addNewTransaction),
        TransactionList(
          transactions: _usersTransactions,
        )
      ],
    );
  }
}
