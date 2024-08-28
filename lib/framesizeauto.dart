import 'package:flutter/material.dart';

class MyHomePageAuto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Frame Example'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: IntrinsicHeight(
            child: Container(
             padding: EdgeInsets.all(16.0), // Add padding for spacing
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Hello, Flutter! autosize text yang didalam box',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}