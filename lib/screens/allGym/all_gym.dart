import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/allGym/components/all_gym_body.dart';
import 'package:gym_customer_update/screens/fitness/components/fitness_body.dart';

class AllGym extends StatelessWidget {
  static String routeName = "/all";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Спорт заал , клубууд'),
      ),
      body: AllGymBody(),
    );
  }
}
