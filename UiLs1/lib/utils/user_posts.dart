import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String userName;
  final List likes;
  const UserPosts({
    Key? key,
    required this.userName,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        //below the post => button and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //like by...
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Like by '),
              Text(
                likes[0],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                likes.length.toString() + ' other',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        //caption
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: 'Monsieur son ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(text: 'I love you')
              ],
            ),
          ),
        ),

        //comments
      ],
    );
  }
}
