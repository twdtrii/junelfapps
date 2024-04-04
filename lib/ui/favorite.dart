import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            height: 200,
            width: 200,
            color: Colors.green,
          )
        ],
      ),
    );
  }

}