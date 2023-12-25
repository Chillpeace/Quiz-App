

import 'package:flutter/material.dart';
import 'package:kidsquiz_app/quiz.dart';
import 'package:kidsquiz_app/splashscreen/splash_screen.dart';
import 'login_screen/login_screen.dart';
Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => const SplashScreen(),
  LoginScreen.routeName : (context) => LoginScreen(),
  Quiz.routeName : (context) => const Quiz(),
};