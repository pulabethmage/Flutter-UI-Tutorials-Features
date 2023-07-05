import 'package:flutter/material.dart';

class ClipRRectFeature extends StatelessWidget {
  const ClipRRectFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip R Rect Widget"),
        elevation: 0,
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///we can manually do this by adding a decoration to the container, but this is much easier
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
