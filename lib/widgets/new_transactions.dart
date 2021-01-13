import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final amountController = TextEditingController();
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'TItle'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  print(titleController.text);
                  print(amountController.text);
                },
                child: Text(
                  'Add Transaction',
                  style: TextStyle(color: Colors.purple, fontSize: 15),
                ))
          ],
        ),
      ),
      elevation: 9,
    );
  }
}
