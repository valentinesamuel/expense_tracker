import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  final amountController = TextEditingController();
  final titleController = TextEditingController();
  NewTransaction({this.addTx});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'TItle'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
                color: Colors.yellow,
                onPressed: () => {
                      addTx(titleController.text,
                          double.parse(amountController.text))
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
