import 'package:designproject02/new_features.dart';
import 'package:designproject02/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySquareShadow extends StatelessWidget {
  final Color backColor;
  final IconData imageIcon;
  final String iconText;

  MySquareShadow(
      {required this.backColor,
      required this.imageIcon,
      required this.iconText});

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
        child: GestureDetector(
          onTap: () {
            if (iconText == "Profile") {
              Get.to(() => ProfilePage());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ProfilePage()),
              // );
            } else if (iconText == "New Features") {
              Get.to(() => NewFeatures());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ProfilePage()),
              // );
            }
          },
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  imageIcon,
                  color: Colors.white,
                  size: 55.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(
                    iconText,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
