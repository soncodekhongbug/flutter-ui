import 'package:flutter/material.dart';
import 'package:grapui/utils/emoticon_face.dart';
import 'package:grapui/utils/exercise_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, Son Handsome!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "17 May 2000",
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),

            //4 different faces
            //bad
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //bad
                Column(
                  children: const [
                    EmoticonFace(
                      emoticonFace: '😢',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                //fine
                Column(
                  children: const [
                    EmoticonFace(
                      emoticonFace: '😁',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Fine',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                //oke
                Column(
                  children: const [
                    EmoticonFace(
                      emoticonFace: '👍',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Oke',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                //love
                Column(
                  children: const [
                    EmoticonFace(
                      emoticonFace: '❤️',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Love',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      //exericse heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //listView of exercise
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTitle(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 16,
                                color: Colors.orange),
                            ExerciseTitle(
                                icon: Icons.person,
                                exerciseName: 'Reading skills',
                                numberOfExercises: 8,
                                color: Colors.green),
                            ExerciseTitle(
                                icon: Icons.star,
                                exerciseName: "Writing Skills",
                                numberOfExercises: 20,
                                color: Colors.pink),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
