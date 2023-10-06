// ignore_for_file: prefer_final_fields, avoid_print, curly_braces_in_flow_control_structures

import 'quiz_object.dart';

class Brain {
  // ignore: unused_field
  int _num = 0;
  List<Questionbank> _quizler = [
    Questionbank(q: 'There are 4 lungs in the human body.', a: false),
    Questionbank(q: 'The human skin regenerates once in two weeks.', a: false),
    Questionbank(
        q: 'The speed of the average human sneeze can be measured up to 100 miles an hour.',
        a: true),
    Questionbank(
        q: 'Humans lose an average of 75 strands of hair per week. ', a: false),
    Questionbank(
        q: 'The number of bones in an infant is more than that of an average human.',
        a: true),
    Questionbank(
        q: 'The liver is the largest internal organ in the human body.',
        a: true),
    Questionbank(
        q: 'The human brain contains the maximum amount of muscle density.',
        a: false),
    // Questionbank(
    //     q: 'The tongue is the only part of the human body with taste buds.',
    //     a: false),
    // Questionbank(
    //     q: 'The human eyes can observe 10 million different colors.', a: true),
    // Questionbank(q: 'The average human body consists of 60% water.', a: true),
    // Questionbank(q: 'Tom Cruise inspired Aladdin\’s character.', a: true),
    // Questionbank(
    //     q: '\“We Don\’t Talk about Bruno\”\, the song from Encanto is the first to touch \#1 on the Billboard Top 100 charts after 29 years.',
    //     a: true),
    // Questionbank(
    //     q: 'The song \“A Whole New World\” from Alladin was \#3 on the Billboard Top 100 charts in 1993.',
    //     a: false),
    // Questionbank(
    //     q: 'It took 8 weeks to start and finish the production of the 1959 Disney film \“Sleeping Beauty\”',
    //     a: false),
    // Questionbank(
    //     q: 'The Snow White and the Seven Dwarfs was the first animated\, full-color Walt Disney feature film.',
    //     a: true),
    // Questionbank(
    //     q: 'The first movie produced by Pixar was \“Toy Story\”', a: true),
    // Questionbank(q: 'Minnie Mouse\’s real name is Minerva Mouse.', a: true),
    // Questionbank(q: '\“Pinocchio\” is the shortest Disney film.', a: false),
    // Questionbank(
    //     q: '\“The Aristocrats\” was the first film to be produced after Walt Disney\’s demise.',
    //     a: true),
    // Questionbank(
    //     q: 'In \“The Little Mermaid\”\, Prince Erik and Ariel have a daughter named Princess Song.',
    //     a: false),
    // Questionbank(
    //     q: '\“The Lion King\” was Disney\’s first Broadway musical.', a: false),
  ];

  void nextquestion() {
    if (_num < _quizler.length - 1) {
      _num++;
    }
  }

  bool isfinished() {
    if (_num >= _quizler.length - 1) {
      print('true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _num = 0;
  }

  String getquestion() {
    return _quizler[_num].question;
  }

  bool getanswer() {
    return _quizler[_num].ans;
  }
}
