import 'package:designproject02/tabs/first_tab.dart';
import 'package:designproject02/tabs/second_tab.dart';
import 'package:designproject02/tabs/third_tab.dart';
import 'package:flutter/material.dart';

class TabBarFeature extends StatelessWidget {
  const TabBarFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 191, 160, 245),
                  width: 5.0,
                ),
              ),
            ),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.pedal_bike,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          elevation: 0,
          title: const Text("T A B B A R"),
        ),
        body: const TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
            ThirdTab(),
          ],
        ),
      ),
    );
  }
}
