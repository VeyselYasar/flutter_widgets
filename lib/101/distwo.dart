import 'package:flutter/material.dart';
import 'dart:async';

class DisTwo extends StatefulWidget {
  const DisTwo({Key? key}) : super(key: key);

  @override
  _DisOneState createState() => _DisOneState();
}

class _DisOneState extends State<DisTwo> {
  late String _timeString;

  @override
  void initState() {
    _timeString = "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}";
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  void _getCurrentTime() {
    final String currentTime = "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}";

    setState(() {
      _timeString = currentTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column Örneği'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Container(
                  height: 400,
                  width: screenWidth,
                  color: Colors.red,
                  child: Center(child: Text('Bölge 1: $_timeString', style: TextStyle(fontSize: 24, color: Colors.white))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Container(
                  height: 250,
                  width: screenWidth,
                  color: Colors.green,
                  child: Center(child: Text('Bölge 2', style: TextStyle(fontSize: 24, color: Colors.white))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text('Bölge 57' * 150, style: TextStyle(fontSize: 24, color: Colors.white))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
