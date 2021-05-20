import 'package:flutter/material.dart';
import 'package:gym_customer_update/components/default_button.dart';
import 'package:gym_customer_update/gymDetails/components/gymDescription.dart';
import 'package:gym_customer_update/gymDetails/components/gym_images.dart';
import 'package:gym_customer_update/models/Gym.dart';
import 'package:gym_customer_update/screens/map/map.dart';
import 'package:gym_customer_update/screens/order/orderTimeScreen.dart';
import 'package:gym_customer_update/size_config.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Gym gym;

  const Body({Key key, @required this.gym}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GymImages(gym: gym),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              GymDescription(
                gym: gym,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(5),
                        ),
                        child: DefaultButton(
                          text: "Захиалга өгөх",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderTimePage()));
                          },
                        ),
                      ),
                    ),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(50),
                        ),
                        child: DefaultButton(
                          text: "Байршил харах",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Map()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
