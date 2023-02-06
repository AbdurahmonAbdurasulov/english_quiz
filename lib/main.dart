import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/results.dart';
import './widgets/questions.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  @override
  //String question = "1-savol";
  // String javob1 = "1-javob S1";
  // String javob2 = "2-javob S1";
  // String javob3 = "3-javob S1";
  // String javob4 = "4-javob S1";

  int numOfQuestion = 0;
  int result = 0;
  late String resultText;

  List<Map<String, dynamic>> questionsAndAnswers = [
    {
      "savollar": "1.What ___ your name?",
      "javoblar": [
        {"text": "are", "isTrue": false},
        {"text": "is", "isTrue": true},
        {"text": "were", "isTrue": false},
        {"text": "has", "isTrue": false},
      ]
    },
    {
      "savollar": "2.How are ___ ?",
      "javoblar": [
        {"text": "he", "isTrue": false},
        {"text": "she", "isTrue": false},
        {"text": "they", "isTrue": true},
        {"text": "i", "isTrue": false},
      ]
    },
    {
      "savollar": "3.Where ___ you born?",
      "javoblar": [
        {"text": "are", "isTrue": false},
        {"text": "is", "isTrue": false},
        {"text": "were", "isTrue": true},
        {"text": "has", "isTrue": false},
      ]
    },
    {
      "savollar": "4.When ___ you born?",
      "javoblar": [
        {"text": "are", "isTrue": false},
        {"text": "is", "isTrue": false},
        {"text": "have", "isTrue": false},
        {"text": "were", "isTrue": true},
      ]
    },
    {
      "savollar": "5.What ___ your name?",
      "javoblar": [
        {"text": "are", "isTrue": false},
        {"text": "is", "isTrue": true},
        {"text": "were", "isTrue": false},
        {"text": "has", "isTrue": false},
      ]
    }
  ];

  void answerQuestions(bool isTrue) {
    setState(() {
      if (isTrue) {
        result++;
      }
      if (result == 0) {
        resultText = "Kechirasiz, yana bir bor harakat qilib ko'ring!";
      } else if (result >= 1 && result <= 4) {
        resultText =
            "Yaxshi, lekin bundanda yaxshiroq natijaga erishishingiz mumkin!";
      } else {
        resultText = "Ajoyib, siz hamma savollarga to'g'ri javob berdingiz!";
      }
      numOfQuestion++;
    });
  }

  void restart() {
    setState(() {
      numOfQuestion = 0;
      result = 0;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("English Quiz"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: numOfQuestion < questionsAndAnswers.length
              ? Question(
                  questionsAndAnswers[numOfQuestion]["savollar"],
                  questionsAndAnswers[numOfQuestion]["javoblar"],
                  answerQuestions)
              : Result(result, restart, resultText),
        ),
      ),
    );
  }
}
