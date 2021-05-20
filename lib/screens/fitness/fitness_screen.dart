import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/fitness/components/fitness_body.dart';

class FitnessScreen extends StatelessWidget {
  static String routeName = "/fitness";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Фитнесс'),
      ),
      body: FitnessBody(),
    );
  }
}
