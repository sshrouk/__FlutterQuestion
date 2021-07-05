import 'package:flutter/material.dart';
import 'package:flutter_app4/quizbrian.dart';

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  QuizBrain quizBrain = new QuizBrain();

  @override
  Widget build(BuildContext context) {
    bool answercheck = quizBrain.getAnswer();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: (EdgeInsets.all(15.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  //Expanded bt5od el ms7a kolha
                  flex: 5,
                  child: Center(
                    child: Text(
                      quizBrain.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    if (answercheck == true) {
                      setState(() {
                        quizBrain.goNext();
                      });
                    }
                  },
                  child: Text(
                    "True",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    if (answercheck == false) {
                      setState(() {
                        quizBrain.goNext();
                      });
                    }
                  },
                  child: Text(
                    "False",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
