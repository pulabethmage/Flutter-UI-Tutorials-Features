import 'package:flutter/material.dart';

class MySquareShadow extends StatelessWidget {
  final Color backColor;
  final IconData imageIcon;

  MySquareShadow({required this.backColor, required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(4.0, 4.0),
                blurRadius: 8.0,
                spreadRadius: 1.0),
          ],
          color: backColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        margin: const EdgeInsets.all(5),
        height: double.maxFinite,
        padding: const EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 8.0,
                  spreadRadius: 1.0),
            ],
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(
            imageIcon,
            color: Colors.white,
            size: 55.0,
          ),
        ),
      ),
    );
  }
}
