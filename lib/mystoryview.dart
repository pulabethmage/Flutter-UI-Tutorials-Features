import 'package:flutter/material.dart';

class MyStoryView extends StatelessWidget {
  final String childText;

  const MyStoryView({required this.childText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(3.0, 3.0),
                blurRadius: 5.0,
                spreadRadius: 1.0),
          ],
          color: Colors.deepPurple[500],
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Text(
          childText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
