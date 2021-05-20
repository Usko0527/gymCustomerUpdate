import 'package:flutter/widgets.dart';
import 'package:gym_customer_update/gymDetails/details_screen.dart';
import 'package:gym_customer_update/screens/allGym/all_gym.dart';
import 'package:gym_customer_update/screens/bowling/bowling_screen.dart';
import 'package:gym_customer_update/screens/complete_profile/complete_profile_screen.dart';
import 'package:gym_customer_update/screens/dance/dance_screen.dart';
import 'package:gym_customer_update/screens/details/details_screen.dart';
import 'package:gym_customer_update/screens/favorite/favorite_screen.dart';
import 'package:gym_customer_update/screens/fitness/fitness_screen.dart';
import 'package:gym_customer_update/screens/forgot_password/forgot_password_screen.dart';
import 'package:gym_customer_update/screens/gym/gym_screen.dart';
import 'package:gym_customer_update/screens/home/home_screen.dart';
import 'package:gym_customer_update/screens/login_success/login_success_screen.dart';
import 'package:gym_customer_update/screens/payment/payment_screen.dart';
import 'package:gym_customer_update/screens/profile/profile_screen.dart';
import 'package:gym_customer_update/screens/sign_in/sign_in_screen.dart';
import 'package:gym_customer_update/screens/sign_up/sign_up_screen.dart';
import 'package:gym_customer_update/screens/splash/splash_screen.dart';
import 'package:gym_customer_update/screens/tennis/tennis.dart';
import 'package:gym_customer_update/screens/user_information/user_information.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  UserInformationScreen.routeName: (context) => UserInformationScreen(),
  DanceScreen.routeName: (context) => DanceScreen(),
  FitnessScreen.routeName: (context) => FitnessScreen(),
  GymScreen.routeName: (context) => GymScreen(),
  BowlingScreen.routeName: (context) => BowlingScreen(),
  TennisScreen.routeName: (context) => TennisScreen(),
  GymDetailsScreen.routeName: (context) => GymDetailsScreen(),
  AllGym.routeName: (context) => AllGym(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
};
