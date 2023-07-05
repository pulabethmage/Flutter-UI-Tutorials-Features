import 'package:flutter/material.dart';

class GridViewFeature extends StatelessWidget {
  const GridViewFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Buidler"),
      ),
      body: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepPurple,
                ),
              ),
            );
          }),
    );
  }
}
