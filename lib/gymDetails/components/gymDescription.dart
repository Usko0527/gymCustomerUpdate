import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_customer_update/models/Gym.dart';
import 'package:gym_customer_update/models/Product.dart';
import 'package:gym_customer_update/size_config.dart';

class GymDescription extends StatelessWidget {
  const GymDescription({
    Key key,
    @required this.gym,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Gym gym;
  final GestureTapCallback pressOnSeeMore;

  // Future<void> save() async {
  //   User user = FirebaseAuth.instance.currentUser;
  //   String userId = user.uid;
  //   try {
  //     await FirebaseDatabase.instance
  //         .reference()
  //         .child('userFavorite')
  //         .child(userId)
  //         .set({
  //       'userId': userId,
  //       'favorite': favorite,
  //       'gym': gymName,
  //     });
  //   } catch (e) {
  //     print(e.message);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            gym.name,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        GestureDetector(
          onTap: () {
            // save();
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: Color(0xFFDBDEE4),
                height: getProportionateScreenWidth(16),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            gym.description +
                ". \n ???? " +
                gym.location +
                (gym.basketball == 1 ? "\n ???? ???????????? ????????????" : "") +
                (gym.volleyball == 1 ? "\n ???? ?????? ???????????? " : "") +
                (gym.billard == 1 ? "\n ???? ?????????????? " : "") +
                (gym.bowling == 1 ? "\n ???? ?????????????? " : "") +
                (gym.dance == 1 ? "\n ???? ?????????? " : "") +
                (gym.fitness == 1 ? "\n ??????? ?????????????? " : "") +
                (gym.tennis == 1 ? "\n ???? ???????????? " : "") +
                (gym.floor != null ? "\n ???" + gym.floor : "") +
                (gym.chair == 1 ? "\n ??? ?????????????????? ???????????? " : "") +
                (gym.clothesRoom == 1 ? "\n ??? ???????????? ?????????? ???????? " : "") +
                (gym.light == 1 ? "\n ??? ?????????????????????? " : "") +
                (gym.parking == 1 ? "\n ??? ???????????? ?????????????? " : "") +
                (gym.wifi == 1 ? "\n ??? ???????????? wifi " : "") +
                (gym.shower == 1 ? "\n ??? ?????????????? " : "") +
                "\n ????" +
                gym.phoneNumber.toString(),
            maxLines: 20,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
        )
      ],
    );
  }
}
