import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/sign_in/sign_in_screen.dart';
import 'package:gym_customer_update/screens/user_information/user_information.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Хувийн мэдээлэл",
            icon: "assets/icons/User Icon.svg",
            press: () =>
                {Navigator.pushNamed(context, UserInformationScreen.routeName)},
          ),
          ProfileMenu(
            text: "Мэдэгдэл",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Тохиргоо",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Тусламж",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Гарах",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
