import 'package:flutter/material.dart';
import 'answer.dart';
import 'dashboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 1;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      answerWasSelected = true;

      if (answerScore) {
        _totalScore++;
        correctAnswerSelected = true;
      }

      _scoreTracker.add(
        answerScore
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.clear,
                color: Colors.red,
              ),
      );

      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });

    if (_questionIndex >= _questions.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
            }),
        title: Text(
          'Mobile Quiz App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                if (_scoreTracker.length == 0)
                  SizedBox(
                    height: 25.0,
                  ),
                if (_scoreTracker.length > 0) ..._scoreTracker
              ],
            ),
            Container(
              width: double.infinity,
              height: 130.0,
              margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 25.0),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  _questions[_questionIndex]['question'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>).map(
              (answer) => Answer(
                answerText: answer['answerText'],
                answerColor: answerWasSelected
                    ? answer['score']
                        ? Colors.green
                        : Colors.red
                    : null,
                answerTap: () {
                  if (answerWasSelected) {
                    return;
                  }
                  _questionAnswered(answer['score']);
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              onPressed: () {
                if (answerWasSelected == false) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please select an answer before going to the next question'),
                  ));
                  return;
                }
                _nextQuestion();
              },
              child: Text(endOfQuiz ? 'Restart Quiz' : 'Next Question'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '${_totalScore.toString()}/${_questions.length}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            if (answerWasSelected && !endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: correctAnswerSelected ? Colors.green : Colors.red,
                child: Center(
                  child: Text(
                    correctAnswerSelected ? 'May tama ka!' : 'Mali ka UwU',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            if (endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue[900],
                child: Center(
                  child: Text(
                    _totalScore > 4 ? 'Congratulations! Your final score is: $_totalScore' : 'Your final score is: $_totalScore. Better luck next time!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: _totalScore > 4 ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

final _questions = const [
  {
    'question': 'Pogi ba si Arzel? ',
    'answers': [
      {
        'answerText': 'Oo.',
        'score': true
      },
      {
        'answerText': 'Hindi.',
        'score': false
      },
      {
        'answerText': 'Siguro.',
        'score': false
      },
    ],
  },
  {
    'question': 'Ano B ang masarap kainin pag gabi?',
    'answers': [
      {
        'answerText': 'Balot',
        'score': false
      },
      {
        'answerText': 'Bebeko',
        'score': true
      },
      {
        'answerText': 'Barbecue',
        'score': false
      },
    ],
  },
  {
    'question': 'Sino ang idol mong rapper?',
    'answers': [
      {
        'answerText': 'Mama mo',
        'score': true
      },
      {
        'answerText': 'Kuya Willie',
        'score': false
      },
      {
        'answerText': 'Andrew E.',
        'score': false
      },
    ],
  },
  {
    'question': '_____most famous for his theory of electromagnetism?',
    'answers': [
      {
        'answerText': 'James Clerk Maxwell',
        'score': true
      },
      {
        'answerText': 'Isaac Newton',
        'score': false
      },
      {
        'answerText': 'Nikola Tesla',
        'score': false
      },
    ],
  },
  {
    'question': 'Sino ang naka imbento ng Direct Current?',
    'answers': [
      {
        'answerText': 'Nikola Tesla',
        'score': false
      },
      {
        'answerText': 'Thomas Edison',
        'score': true
      },
      {
        'answerText': 'James Clerk Maxwell',
        'score': false
      },
    ],
  },
  {
    'question': 'Anong paaralan ang madaming chixx?',
    'answers': [
      {
        'answerText': 'Seait',
        'score': true
      },
      {
        'answerText': 'Green Valley College',
        'score': false
      },
      {
        'answerText': 'STI',
        'score': true
      },
    ],
  },
  {
    'question': 'What is always coming, but never arrives??',
    'answers': [
      {
        'answerText': 'Tommorow',
        'score': true
      },
      {
        'answerText': 'December',
        'score': false
      },
      {
        'answerText': 'Christmass',
        'score': false
      },
    ],
  },
  {
    'question': 'Anong Language ang mahirap intindihin?',
    'answers': [
      {
        'answerText': 'C',
        'score': false
      },
      {
        'answerText': 'Java',
        'score': false
      },
      {
        'answerText': 'Chinese',
        'score': true
      },
    ],
  },
  {
    'question': 'Anong language ginagamit sa flutter framework?',
    'answers': [
      {
        'answerText': 'Dart',
        'score': true
      },
      {
        'answerText': 'Kotlin',
        'score': false
      },
      {
        'answerText': 'Java',
        'score': false
      },
    ],
  },
  {
    'question': 'Piliin ang uWu?',
    'answers': [
      {
        'answerText': 'uWu',
        'score': true
      },
      {
        'answerText': 'uwuuuuu',
        'score': false
      },
      {
        'answerText': 'OwO',
        'score': false
      },
    ],
  },
];
