import 'package:flutter/material.dart';
import 'package:gym_customer_update/screens/gym/components/gym_body.dart';

class GymScreen extends StatelessWidget {
  static String routeName = "/gym";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Спорт заал'),
      ),
      body: GymBody(),
    );
  }
}
