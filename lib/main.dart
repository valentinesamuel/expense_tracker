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
            Card(child: Text('List Of Tx!', style: TextStyle(fontSize: 20),), elevation: 6,)
          ],
        ),
      ),
    );
  }
}
