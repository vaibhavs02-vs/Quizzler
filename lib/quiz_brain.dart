import 'package:flutter/cupertino.dart';

import 'question.dart';

class Quizbrain{
  int _questionNumber = 0;



  List<Question> _questionBank=[
    Question('Some cats are actually allergic to humans',true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded in half more than 7 times.',false),
    Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',false),
    Question('The total surface area of two human lungs is approximately 70 square metres.',true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',true),
    Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',true),
    Question('Lightning never strikes in the same place twice.', false),
    Question('If you cry in space the tears just stick to your face.', true),
    Question(' If you cut an earthworm in half, both halves can regrow their body.', false),
    Question('Buzz Aldrin was the first man to urinate on the moon.', false),
    Question('Humans can’t breathe and swallow at the same time.',true),
    Question('The owner of the company that makes Segways died after accidentally driving his Segway off a cliff.',true),

  ];
  void nextQuestion(){
    if(_questionNumber<_questionBank.length-1)
    {
      _questionNumber++;
    }

  }

  String getQuestionText()
  {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished()
  {
    if(_questionNumber>=_questionBank.length-1)
      {print('Now returning true');
      return true;

      } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}


