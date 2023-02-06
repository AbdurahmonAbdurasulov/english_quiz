import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  final List<Map<String, dynamic>> answers;
  final Function answerQuestions;
  Question(this.question, this.answers, this.answerQuestions);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () => answerQuestions(answers[0]["isTrue"]),
          child: Text(
            answers[0]["text"],
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
        ElevatedButton(
          onPressed: () => answerQuestions(answers[1]["isTrue"]),
          child: Text(
            answers[1]["text"],
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
        ElevatedButton(
          onPressed: () => answerQuestions(answers[2]["isTrue"]),
          child: Text(
            answers[2]["text"],
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
        ElevatedButton(
          onPressed: () => answerQuestions(answers[3]["isTrue"]),
          child: Text(
            answers[3]["text"],
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
      ],
    );
  }
}
