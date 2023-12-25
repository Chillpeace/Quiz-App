// import 'package:flutter/material.dart';
// import 'package:kidsquiz_app/data/questions.dart';
//
// class Questions extends StatelessWidget {
//   const Questions({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(40),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentQuestion.text,
//               style: GoogleFonts.lato(
//                 color: const Color.fromARGB(255, 201, 153, 251),
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ...currentQuestion.getShuffledAnswers().map((answer) {
//               return AnswerButton(answer, (){
//                 answerQuestion(answer);
//               });
//             })
//           ],
//         ),
//       ),
//     );;
//   }
// }
