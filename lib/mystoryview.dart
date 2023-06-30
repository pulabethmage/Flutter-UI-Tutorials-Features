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
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Center(child: Text(childText)),
      ),
    );
  }
}
