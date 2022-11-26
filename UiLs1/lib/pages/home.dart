import 'package:flutter/material.dart';
import 'package:ui_ls1/utils/bubble_stories.dart';
import 'package:ui_ls1/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List peoples = [
    'sonhandsome',
    'monsieur son',
    'sondez',
    'vincenzo cassano',
    '1235',
    'faker',
    'zed',
    'yasuo',
    'meow meow',
  ];

  final List likes = [
    'sonhandsome',
    'monsieur son',
    'sondez',
    'vincenzo cassano',
    '1235',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Icon(Icons.favorite),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peoples.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return BubbleStories(userName: peoples[index]);
              },
            ),
          ),

          //posts
          Expanded(
            child: ListView.builder(
              itemCount: peoples.length,
              itemBuilder: (context, index) {
                return UserPosts(userName: peoples[index], likes: likes);
              },
            ),
          )
        ],
      ),
    );
  }
}
