import 'package:flutter/material.dart';
import 'package:gym_customer_update/models/Gym.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class GymDetailsScreen extends StatelessWidget {
  static String routeName = "/gym_details";

  @override
  Widget build(BuildContext context) {
    final GymDetailsArguments agrs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: 3.3),
      body: Body(gym: agrs.gym),
    );
  }
}

class GymDetailsArguments {
  final Gym gym;

  GymDetailsArguments({@required this.gym});
}
