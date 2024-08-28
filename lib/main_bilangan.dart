import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Operator Hitung Dart di Flutter'),
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;
  String result = '';

  void proses() {
    setState(() {
      if (number1 > number2 && number1 > number3) {
        result = 'Nilai X Terbesar';
      } else if (number2 > number1 && number2 > number3) {
        result = 'Nilai Y Terbesar';
      } else if (number3 > number1 && number3 > number2) {
        result = 'Nilai Z Terbesar';
      } else {
        result = 'Nilai sama';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Nilai X'),
            onChanged: (value) {
              setState(() {
                number1 = int.parse(value);
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Nilai Y'),
            onChanged: (value) {
              setState(() {
                number2 = int.parse(value);
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Nilai Z'),
            onChanged: (value) {
              setState(() {
                number3 = int.parse(value);
              });
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: proses,
                child: Text('Tambah'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(result, style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
