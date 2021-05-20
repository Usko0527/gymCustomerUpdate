import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gym_customer_update/components/custom_surfix_icon.dart';
import 'package:gym_customer_update/components/default_button.dart';
import 'package:gym_customer_update/components/form_error.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/sign_in_screen.dart';

class UserInformationForm extends StatefulWidget {
  @override
  _UserInformationForm createState() => _UserInformationForm();
}

class _UserInformationForm extends State<UserInformationForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  TextEditingController firstNameT;
  TextEditingController lastNameT;
  TextEditingController phoneNumberT;
  TextEditingController addressT;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User user = FirebaseAuth.instance.currentUser;
    String userId = user.uid;
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child('userInformation').child(userId).once().then((DataSnapshot snap) {
      var data = snap.value;
      print(data);
      firstName = (data['firstName']).toString();
      lastName = (data['lastName']).toString();
      phoneNumber = (data['phoneNumber']).toString();
      address = (data['address']).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "ХАДГАЛАХ",
            press: () {
              if (_formKey.currentState.validate()) {
                save();
              }
            },
          ),
        ],
      ),
    );
  }

  Future<void> save() async {
    User user = FirebaseAuth.instance.currentUser;
    String userId = user.uid;
    String email = user.email;
    try {
      await FirebaseDatabase.instance
          .reference()
          .child('userInformation')
          .child(userId)
          .set({
        'userId': userId,
        'email': email,
        'firstName': firstName.toString(),
        'lastName': lastName.toString(),
        'phoneNumber': phoneNumber,
        'address': address.toString()
      });
      final snackBar = SnackBar(
        content: Text('Амжилттай'),
        backgroundColor: kPrimaryColor,
        action: SnackBarAction(
          label: 'Хаах',
          textColor: Colors.white,
          onPressed: () {
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print(e.message);
    }
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      controller: TextEditingController(text: address),
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        address = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Хаяг",
        hintText: "Хаяг оруулна уу",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      controller: TextEditingController(text: phoneNumber),
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        phoneNumber = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Утасны дугаар",
        hintText: "Утасны дугаар оруулна уу",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      controller: TextEditingController(text: lastName),
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        lastName = value;
      },
      decoration: InputDecoration(
        labelText: "Овог",
        hintText: "Овог оруулна уу",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      controller: TextEditingController(text: firstName),
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        firstName = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Нэр",
        hintText: "Нэр оруулна уу",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
