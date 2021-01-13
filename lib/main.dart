import 'package:expense_tracker/widgets/user_transactions.dart';

import 'models/transaction.dart';
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
  final List<Transaction> transactions = [];
  // String amountInput;
  // String titleInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
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
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
