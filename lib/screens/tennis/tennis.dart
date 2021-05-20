import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/tennis/components/tennis_body.dart';

class TennisScreen extends StatelessWidget {
  static String routeName = "/tennis";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Теннис'),
      ),
      body: TennisBody(),
    );
  }
}
