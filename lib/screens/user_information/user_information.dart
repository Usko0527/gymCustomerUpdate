import 'package:flutter/material.dart';

import 'components/body.dart';

class UserInformationScreen extends StatelessWidget {
  static String routeName = "/user_information";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хувийн мэдээлэл'),
      ),
      body: Body(),
    );
  }
}
