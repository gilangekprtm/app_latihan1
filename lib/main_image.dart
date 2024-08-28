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
          title: Text('Aset gambar di Flutter'),
        ),
        body: Center(
          child: Image.asset('assets/appimages/indomie.png'),
        ),
      ),
    );
  }
}