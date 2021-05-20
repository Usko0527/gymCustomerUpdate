import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/dance/components/body.dart';

class DanceScreen extends StatelessWidget {
  static String routeName = "/dance";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Бүжиг'),
      ),
      body: DanceBody(),
    );
  }
}
