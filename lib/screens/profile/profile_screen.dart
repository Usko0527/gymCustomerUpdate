import 'package:flutter/material.dart';
import 'package:gym_customer_update/components/coustom_bottom_nav_bar.dart';
import 'package:gym_customer_update/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Нүүр хуудас"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
