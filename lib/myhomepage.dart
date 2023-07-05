import 'package:designproject02/square_shadow.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: const Text("D A S H B O A R D")),
      ),
      body: Container(
        color: Colors.deepPurple,
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySquareShadow(
                    backColor: Colors.deepPurple.shade300,
                    imageIcon: Icons.person_2_rounded,
                    iconText: "Profile",
                  ),
                  MySquareShadow(
                    backColor: Colors.deepPurple.shade300,
                    imageIcon: Icons.add,
                    iconText: "New\nFeatures",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySquareShadow(
                    backColor: Colors.deepPurple.shade300,
                    imageIcon: Icons.ac_unit,
                    iconText: "Put\nAc",
                  ),
                  MySquareShadow(
                    backColor: Colors.deepPurple.shade300,
                    imageIcon: Icons.access_alarm,
                    iconText: "Set\nAlarm",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
