import 'questions.dart';

class QuizBrain {
  List<Questions> _questions = [
    Questions(
        q: 'Serena Williams has one more singles tennis Grand Slam titles than sister Venus',
        a: true),
    Questions(q: 'The tutorial was very enjoyable', a: true),
    Questions(
        q: 'You are using this app right now, you\'ve got no choice', a: true),
    Questions(q: 'You are in a relationship', a: false),
    Questions(
        q: 'Gin is typically included in a Long Island Iced Tea', a: true),
    Questions(q: 'Monaco is the smallest country in the world', a: false),
    Questions(q: 'Australia is wider than the moon', a: true),
    Questions(
        q: 'Queen Elizabeth II is currently the second longest reigning British monarch',
        a: false),
  ];
  int _questionNumber = 0;

  //3shan a5ly ll 7ga privat b7t _name
  String getQuestion() {
    return _questions[_questionNumber].questions;
  }

  bool getAnswer() {
    return _questions[_questionNumber].answers;
  }

  void goNext() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

}
