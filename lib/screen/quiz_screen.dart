import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/database/database_helper.dart';
import '../models/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Quiz> _questions = [];
  int _currentIndex = 0;
  int _score = 0;
  bool isAnswered = false;
  String selectedAnswer = "";
  bool isWebScreen = kIsWeb;

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  Future<void> _loadQuestions() async {
    List<Quiz> questions = await DatabaseHelper.instance.fetchQuizzes();
    setState(() {
      _questions = questions;
    });
  }

  void checkAnswer(String answer) {
    setState(() {
      isAnswered = true;
      selectedAnswer = answer;
      if (answer == _questions[_currentIndex].correctAnswer) {
        _score++;
      }
    });
  }

  void nextQuestion() {
    setState(() {
      if (_currentIndex < _questions.length - 1) {
        _currentIndex++;
        isAnswered = false;
        selectedAnswer = "";
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Quiz Completed!"),
            content: Text("Your Score: $_score/${_questions.length}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 0;
                    _score = 0;
                    isAnswered = false;
                    selectedAnswer = "";
                  });
                },
                child: Text("Restart"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context); // Close Dialog
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Text("Close",selectionColor: Colors.red,),
              )
            ],
          ),
        );
      }
    });
  }

  Widget optionBtn(String option) {
    bool isCorrect = option == _questions[_currentIndex].correctAnswer;
    bool isSelected = option == selectedAnswer;

    return GestureDetector(
      onTap: isAnswered ? null : () => checkAnswer(option),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isAnswered
              ? (isCorrect
                  ? Colors.green.withOpacity(0.5)
                  : (isSelected
                      ? Colors.red.withOpacity(0.5)
                      : Colors.grey.withOpacity(0.5)))
              : Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            option,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return Scaffold(
        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/galaxy.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(child: CircularProgressIndicator())),
      );
    }
    var question = _questions[_currentIndex];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isWebScreen
          ? null
          : AppBar(
              title: Text(
                'Planet Quiz',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor:
                  Colors.grey.withOpacity(0.5), // Semi-transparent color
              elevation: 0, // No shadow
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/galaxy.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 130, horizontal: 16),
          // padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                question.question,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Column(children: [
                optionBtn(question.optionA),
                optionBtn(question.optionB),
                optionBtn(question.optionC),
                optionBtn(question.optionD),
              ]),
              SizedBox(height: 20),
              if (isAnswered)
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: nextQuestion,
                    child: Text(
                      "Next",
                      selectionColor: Colors.black,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
