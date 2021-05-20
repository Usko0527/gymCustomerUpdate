import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_customer_update/gymDetails/details_screen.dart';
import 'package:gym_customer_update/models/Cart.dart';
import 'package:gym_customer_update/models/Gym.dart';
import 'package:gym_customer_update/models/cart_card.dart';
import 'package:gym_customer_update/size_config.dart';

class DanceBody extends StatefulWidget {
  @override
  _DanceBody createState() => _DanceBody();
}

class _DanceBody extends State<DanceBody> {
  List<String> imagesUrl = [];
  List<Cart> dataDance = [];
  int counter = 1;

  Gym gymData;

  @override
  void initState() {
    super.initState();
    imagesUrl.clear();
    dataDance.clear();
    counter = 1;
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child('gymInformation').once().then((DataSnapshot snap) {
      Map<dynamic, dynamic> values = snap.value;
      values.forEach((key, values) {
        if (values['dance'] != null && values['dance'] == 1) {
          Map<dynamic, dynamic> images = values['images'];
          imagesUrl = [];
          if (images != null) {
            imagesUrl.add(images['image1']);
            imagesUrl.add(images['image2']);
            imagesUrl.add(images['image3']);
            imagesUrl.add(images['image4']);
            imagesUrl.add(images['image5']);
          }
          Gym d = new Gym(
              counter,
              values['name'],
              values['square'],
              values['price'],
              values['phoneNumber'],
              values['floor'],
              values['location'],
              values['description'],
              values['clothesRoom'],
              values['light'],
              values['chair'],
              values['shower'],
              values['parking'],
              values['wifi'],
              values['basketball'],
              values['volleyball'],
              values['soccer'],
              values['tennis'],
              values['dance'],
              values['billard'],
              values['bowling'],
              values['fitness'],
              imagesUrl);
          Cart e = new Cart(gym: d);
          dataDance.add(e);
          counter++;
        }
      });

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: dataDance.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, GymDetailsScreen.routeName,
                    arguments: GymDetailsArguments(gym: dataDance[index].gym));
              },
              child: CartCard(cart: dataDance[index]),
            )),
      ),
    );
  }
}
