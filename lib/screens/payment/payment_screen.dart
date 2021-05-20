import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_customer_update/constants.dart';
import 'package:gym_customer_update/screens/home/home_screen.dart';
import 'package:gym_customer_update/screens/payment/components/rounded_container.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Төлбөр төлөх арга сонгоно уу",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: RoundedContainer(
                    color: kPrimaryColor,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "180000₮",
                          style: boldText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RoundedContainer(
                    color: kPrimaryColor,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "20:00 - 22:00",
                          style: boldText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.applePay,
                  color: kPrimaryColor,
                ),
                title: Text("Apple төлөх"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.qrcode,
                  color: kPrimaryColor,
                ),
                title: Text("QPAY төлөх"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.paypal,
                  color: kPrimaryColor,
                ),
                title: Text("Картаар төлөх"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: RaisedButton(
                elevation: 0,
                padding: const EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text("Төлөх"),
                color: kPrimaryColor,
                textColor: Colors.white,
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Амжилттай'),
                    backgroundColor: kPrimaryColor,
                    action: SnackBarAction(
                      label: 'Хаах',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
