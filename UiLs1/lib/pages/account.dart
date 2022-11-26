import 'package:flutter/material.dart';
import 'package:ui_ls1/utils/tab/account_tab1.dart';
import 'package:ui_ls1/utils/tab/account_tab2.dart';
import 'package:ui_ls1/utils/tab/account_tab3.dart';
import 'package:ui_ls1/utils/tab/account_tab4.dart';

import '../utils/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  final List peoples = [
    '26/11/2022',
    '25/11/2022',
    '24/11/2022',
    '23/11/2022',
    '22/11/2022',
    '21/11/2022',
    '20/11/2022',
    '19/11/2022',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: [
                  //profile
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                      ),

                      //number of posts, follower, following
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('200',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Posts')
                              ],
                            ),
                            Column(
                              children: [
                                Text('200k',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Followers')
                              ],
                            ),
                            Column(
                              children: [
                                Text('40',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Following')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //name and bio
                            Text(
                              'son',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'no thing to show in here.',
                              ),
                            ),
                            Text(
                              'm.youtube.com',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  //edit profile
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  //Ad tools
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text('Ad tools'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  //Insights
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text('Insights'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: peoples.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: BubbleStories(
                        userName: peoples[index],
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: peoples[index]));
                      },
                    );
                  },
                ),
              ),
            ),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),

            Expanded(
                child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ]))
          ],
        ),
      ),
    );
  }
}
