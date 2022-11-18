import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "17 May 2000",
                    style: TextStyle(
                        color: Colors.blue[200]
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(12),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ],
            ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                        'Search',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                )
              ),
              const SizedBox(
                height: 25,
              ),

              Row(
                children: const [
                  Text(
                      'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(
                      Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              )

          ],
          ),
        ),
      ),
    );
  }
}
