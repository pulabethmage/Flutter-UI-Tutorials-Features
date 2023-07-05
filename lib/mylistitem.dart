import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  final String childText;

  MyListItem({required this.childText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(3.0, 3.0),
                blurRadius: 5.0,
                spreadRadius: 1.0),
          ],
          color: Colors.deepPurple[400],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
            child: Text(
          childText,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
