import 'package:flutter/material.dart';
import 'package:kidsquiz_app/data/questions.dart';
import 'package:kidsquiz_app/models/questions_model.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentIndex = 0;

  void _onNextQuestion() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: questions.length,
              controller: PageController(initialPage: currentIndex),
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder:(context,index){
                return buildQuestionCard(questions[index]);
          } ),
        ),
        if (currentIndex < questions.length - 1)
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Icon(Icons.arrow_forward, size: 32),
          ),
      ],
    );
  }


Widget buildQuestionCard(QuizQuestion question) {
  return Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Question ${currentIndex + 1}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          question.text,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 16),
        ...List.generate(question.answers.length, (index) {
          return RadioListTile<int>(
            title: Text(question.answers[index]),
            value: index,
            groupValue: currentIndex == index ? currentIndex : null,
            onChanged: (value) {
              setState(() {
                currentIndex = value!;
              });
            },
          );
        }),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _onNextQuestion,
          child: Text('Next Question'),
        ),
      ],
    ),
  );
}
}
