import 'package:flutter/material.dart';

import '../utils/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

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
              'Shop',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.menu)
              ],
            )
          ],
        ),
      ),
      body: ShopGrid(),
    );
  }
}
