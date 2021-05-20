import 'package:flutter/material.dart';
import 'package:gym_customer_update/constants.dart';
import 'package:gym_customer_update/models/Gym.dart';
import 'package:gym_customer_update/models/Product.dart';
import 'package:gym_customer_update/size_config.dart';

class GymImages extends StatefulWidget {
  const GymImages({
    Key key,
    @required this.gym,
  }) : super(key: key);

  final Gym gym;

  @override
  _GymImages createState() => _GymImages();
}

class _GymImages extends State<GymImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.gym.id.toString(),
              child: Image.network(widget.gym.images[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.gym.images.length,
                    (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.network(widget.gym.images[index]),
      ),
    );
  }
}
