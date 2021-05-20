import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/bowling/bowling/bowlingBody.dart';

class BowlingScreen extends StatelessWidget {
  static String routeName = "/bowling";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Боулинг Биллард'),
      ),
      body: BowlingBody(),
    );
  }
}
