import 'package:designproject02/new_features.dart';
import 'package:designproject02/pages/drawer_page01.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavDrawerWidget extends StatelessWidget {
  const NavDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text("N A V D R A W E R"),
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O H E R E",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  "P A G E 01",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Get.to(
                    () => const DrawerPageOne(),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  "C L O S E",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.featured_play_list),
                title: const Text(
                  "F E A T U R E S",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Get.to(
                    () => const NewFeatures(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
