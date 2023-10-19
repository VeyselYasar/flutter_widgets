import 'package:flutter/material.dart';

void main() {
  runApp(RichTextExample());
}

class RichTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RichText Örneği'),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Merhaba, ',
              style: TextStyle(color: Colors.black, fontSize: 24),
              children: <TextSpan>[
                TextSpan(
                  text: 'Dünya!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 28,
                  ),
                ),
                TextSpan(
                  text: ' Flutter ile Zengin Metinler!',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
