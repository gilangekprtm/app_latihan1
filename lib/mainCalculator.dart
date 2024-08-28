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
  String result = '';

  void _penjumlahan() {
    setState(() {
      result = 'Hasil: ${number1 + number2}';
    });
  }

  void _pengurangan() {
    setState(() {
      result = 'Hasil: ${number1 - number2}';
    });
  }

  void _perkalian() {
    setState(() {
      result = 'Hasil: ${number1 * number2}';
    });
  }

  void _pembagian() {
    setState(() {
      result = 'Hasil: ${number1 / number2}';
    });
  }

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget> [
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Masukkan Angka Pertama'),
            onChanged: (value) {
              setState(() {
                number1 = int.parse(value);
              });
            },
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Masukkan Angka Kedua'),
            onChanged: (value) {
              setState(() {
                number2 = int.parse(value);
              });
            },
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: _penjumlahan,
              child: Text('Tambah'),
            ),
            ElevatedButton(
              onPressed: _pengurangan,
              child: Text('Kurang'),
            ),
            ElevatedButton(
              onPressed: _perkalian,
              child: Text('Kali'),
            ),
            ElevatedButton(
              onPressed: _pembagian,
              child: Text('Bagi'),
            )
          ],
        ),
        SizedBox(height: 20),
        Text(result, style: TextStyle(fontSize: 24)),
      ],
    ),
  );
}
}