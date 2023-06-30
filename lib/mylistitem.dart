import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  final String childText;

  MyListItem({required this.childText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        color: Colors.blueGrey,
        height: 150.0,
        child: Center(child: Text(childText)),
      ),
    );
  }
}
