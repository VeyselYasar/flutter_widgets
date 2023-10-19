import 'package:flutter/material.dart';


class ColumnLearn extends StatelessWidget {
  const ColumnLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column Örneği'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Center(child: Text('Bölge 1', style: TextStyle(fontSize: 24, color: Colors.white))),
              ),
            ),
            Expanded(
             
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Bölge 2', style: TextStyle(fontSize: 24, color: Colors.white))),
              ),
            ),
            Expanded(
           
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Bölge 3', style: TextStyle(fontSize: 24, color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
