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
        title: const Text("Desgin 02 App"),
      ),
      body: Container(
        color: Colors.cyan,
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySquareShadow(
                    backColor: Colors.amber,
                    imageIcon: Icons.person_2_rounded,
                  ),
                  MySquareShadow(
                    backColor: Color.fromARGB(255, 20, 20, 219),
                    imageIcon: Icons.add,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MySquareShadow(
                    backColor: Colors.pink,
                    imageIcon: Icons.ac_unit,
                  ),
                  MySquareShadow(
                    backColor: Colors.green,
                    imageIcon: Icons.access_alarm,
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
