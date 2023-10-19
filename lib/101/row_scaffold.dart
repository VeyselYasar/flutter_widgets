import 'package:flutter/material.dart';



class ScaffoldRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('metinnnnn'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Burada birinci düğmeye tıklandığında yapılacak işlemler
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text('Kırmızı Düğme'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Burada ikinci düğmeye tıklandığında yapılacak işlemler
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Yeşil Düğme'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Burada üçüncü düğmeye tıklandığında yapılacak işlemler
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text('Mavi Düğme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
