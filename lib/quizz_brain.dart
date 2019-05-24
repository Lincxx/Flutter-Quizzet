import 'package:quizzet/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Gold is edible', true),
    Question(
        'The giant panda spends 14-16 hours each day eating bamboo.', true),
    Question('Gold has been found in eucalyptus tree leaves.', true),
    Question('Gold has been found in eucalyptus tree leaves.', true),
    Question('The longest street in the world is in China.', false),
    Question('Lions kill the most people in Africa each year', false),
    Question(
        'There is only one gun shop in Mexico where you can buy guns legally. The rest are smuggled from the USA.',
        true),
    Question('There are more chess moves than atoms in the universe.', true),
    Question('Harvard was the first US university', true),
    Question('Central Park is thrice the size of Vatican City', true),
    Question('CDC has a vial of smallpox', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].quesitonText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
