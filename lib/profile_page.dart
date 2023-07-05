import 'package:designproject02/mystoryview.dart';
import 'package:flutter/material.dart';

import 'mylistitem.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //page load
  @override
  void initState() {
    super.initState();
    print('hi there page load...');
  }

  final List _posts = [
    'Post 01',
    'Post 02',
    'Post 03',
    'Post 04',
    'Post 05',
    'Post 06',
  ];

  final List _stories = [
    'S 01',
    'S 02',
    'S 03',
    'S 04',
    'S 05',
    'S 06',
    'S 07',
    'S 08',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Profile Page"),
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: double.infinity,
                      color: Colors.pink,
                      child: Text("Colum 01"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: double.infinity,
                      color: Colors.green,
                      child: Text("Colum 02"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return MyStoryView(
                      childText: _stories[index],
                    );
                  }),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return MyListItem(
                        childText: _posts[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
