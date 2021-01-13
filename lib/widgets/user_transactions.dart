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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(
          listOfTransactions: _usersTransactions,
        )
      ],
    );
  }
}
