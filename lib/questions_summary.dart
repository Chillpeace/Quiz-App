import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({Key? key, required this.summaryData})
      : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(

          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: data['user_answer'] == data['correct_answer']
                      ? Colors.blueAccent
                      : Colors.purpleAccent,
                  foregroundColor: Colors.black,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(color: Colors.white24),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(color: Colors.cyan),
                      ),
                      const SizedBox(height: 15,)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
