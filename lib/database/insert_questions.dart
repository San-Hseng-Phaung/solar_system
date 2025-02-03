import 'package:solar_system/database/database_helper.dart';
import '../models/quiz.dart';

class InsertQuestions {
  static Future<void> insertSampleQuestions() async {
    final dbHelper = DatabaseHelper.instance;

    List<Quiz> questions = [
      Quiz(id: 1, question: "Which planet is closest to the Sun?", optionA: "Earth", optionB: "Mars", optionC: "Mercury", optionD: "Venus", correctAnswer: "Mercury"),
      Quiz(id: 2, question: "What is the largest planet in our Solar System?", optionA: "Mars", optionB: "Jupiter", optionC: "Saturn", optionD: "Neptune", correctAnswer: "Jupiter"),
      Quiz(id: 3, question: "Which planet has the most moons?", optionA: "Jupiter", optionB: "Saturn", optionC: "Uranus", optionD: "Neptune", correctAnswer: "Saturn"),
      Quiz(id: 4, question: "Which planet is known as the Red Planet?", optionA: "Earth", optionB: "Venus", optionC: "Mars", optionD: "Jupiter", correctAnswer: "Mars"),
      Quiz(id: 5, question: "Which planet has the highest mountain in the Solar System?", optionA: "Earth", optionB: "Venus", optionC: "Mars", optionD: "Jupiter", correctAnswer: "Mars"),
      Quiz(id: 6, question: "Which planet has the shortest day?", optionA: "Mercury", optionB: "Jupiter", optionC: "Saturn", optionD: "Neptune", correctAnswer: "Jupiter"),
      Quiz(id: 7, question: "What is the smallest planet in our Solar System?", optionA: "Mercury", optionB: "Venus", optionC: "Mars", optionD: "Neptune", correctAnswer: "Mercury"),
      Quiz(id: 8, question: "Which planet has the Great Red Spot?", optionA: "Earth", optionB: "Mars", optionC: "Jupiter", optionD: "Saturn", correctAnswer: "Jupiter"),
      Quiz(id: 9, question: "Which planet has the fastest winds?", optionA: "Earth", optionB: "Neptune", optionC: "Saturn", optionD: "Uranus", correctAnswer: "Neptune"),
      Quiz(id: 10, question: "Which planet is the densest?", optionA: "Earth", optionB: "Venus", optionC: "Neptune", optionD: "Jupiter", correctAnswer: "Earth"),
    ];

    for (var question in questions) {
      await dbHelper.insertQuiz(question);
    }
  }
}
