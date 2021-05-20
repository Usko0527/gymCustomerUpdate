import 'package:flutter/material.dart';
import 'package:gym_customer_update/constants.dart';
import 'package:gym_customer_update/screens/user_information/components/userInformationForm.dart';
import 'package:gym_customer_update/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(30)),
                UserInformationForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
