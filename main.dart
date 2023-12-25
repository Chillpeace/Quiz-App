import 'package:flutter/material.dart';
import 'package:kidsquiz_app/routes.dart';
import 'package:kidsquiz_app/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: SplashScreen.routeName,
      routes: routes,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: const SplashScreen(),
    );
  }
}


