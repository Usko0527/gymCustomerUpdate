import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/favorite";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Таны дуртай спорт заал, клуб",
            style: TextStyle(color: Colors.black),
          ),
          // Text(
          //   "${demoCarts.length} items",
          //   style: Theme.of(context).textTheme.caption,
          // ),
        ],
      ),
    );
  }
}
