import 'package:flutter/material.dart';

class ForEachLoop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
    List<Widget> ListItems = [];
    items.forEach((item) {
      ListItems.add(ListTile(
        title: Text(item),
      ));
    });
    return ListView(
      children: ListItems,
    );
  }
}

class SumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> numbers = [1, 2, 3, 4, 5];
    int sum = 0;

    // Menggunakan for loop untuk menghitung jumlah elemen dalam list
    for (int num in numbers) {
      sum += num;
    }

    // Menampilkan hasilnya dalam sebuah widget Text
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'List of numbers: ${numbers.join(', ')}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Sum of the list is: $sum',
          style: TextStyle(fontSize: 22),
        ),
      ],
    );
  }
}