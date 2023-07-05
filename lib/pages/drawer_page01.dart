import 'package:flutter/material.dart';

class DrawerPageOne extends StatelessWidget {
  const DrawerPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text("Page 01"),
      ),
    );
  }
}
