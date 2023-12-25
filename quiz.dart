import 'package:flutter/material.dart';
import 'package:kidsquiz_app/login_screen/login_screen.dart';
import 'package:kidsquiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  static String routeName = 'Quiz';
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'login-screen';
  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = LoginScreen(onTap: switchScreen,);
    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen();
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child:screenWidget ,
      ),
    );
  }
}
