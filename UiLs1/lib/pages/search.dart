import 'package:flutter/material.dart';
import 'package:ui_ls1/utils/explore_gird.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  color: Colors.grey[400],
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      Container(
                        child: Text(
                          'SEARCH',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
      body: ExploreGird(),
    );
  }
}
