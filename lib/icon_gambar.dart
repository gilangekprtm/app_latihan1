import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.account_circle_rounded,
          color: Colors.green,
          size: 96,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.pink,
          size: 120,
        ),
        Image.network(
            'https://upload.wikimedia.org/wikipedia/id/thumb/2/2c/Analis_Bdg.JPG/242px-Analis_Bdg.JPG'
        ),
      ],
    );
  }
}
