import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_customer_update/screens/bowling/bowling_screen.dart';
import 'package:gym_customer_update/screens/dance/dance_screen.dart';
import 'package:gym_customer_update/screens/fitness/fitness_screen.dart';
import 'package:gym_customer_update/screens/gym/gym_screen.dart';
import 'package:gym_customer_update/screens/tennis/tennis.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/skating.svg", "text": "Бүжиг"},
      {"icon": "assets/icons/weightlifting.svg", "text": "Фитнесс"},
      {"icon": "assets/icons/basketball.svg", "text": "Спорт заал"},
      {"icon": "assets/icons/pool.svg", "text": "Боулинг Биллард"},
      {"icon": "assets/icons/ping-pong.svg", "text": "Теннис"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
              switch (categories[index]["text"]) {
                case "Бүжиг":
                  Navigator.pushNamed(context, DanceScreen.routeName);
                  break;
                case "Фитнесс":
                  Navigator.pushNamed(context, FitnessScreen.routeName);
                  break;
                case "Спорт заал":
                  Navigator.pushNamed(context, GymScreen.routeName);
                  break;
                case "Боулинг Биллард":
                  Navigator.pushNamed(context, BowlingScreen.routeName);
                  break;
                case "Теннис":
                  Navigator.pushNamed(context, TennisScreen.routeName);
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(65),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(5)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                // color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
