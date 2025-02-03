import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../../models/quiz.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('quiz.db');
    return _database!; 
  }

  Future<Database> _initDB(String filePath) async {
    // ✅ Initialize correct database factory
    if (kIsWeb) {
      databaseFactory = databaseFactoryFfiWeb;
    } else {
      // sqfliteFfiInit();
      databaseFactory = databaseFactory;
    }

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await databaseFactory.openDatabase(path,
        options: OpenDatabaseOptions(version: 1, onCreate: _createDB));
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE quiz (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        question TEXT NOT NULL,
        optionA TEXT NOT NULL,
        optionB TEXT NOT NULL,
        optionC TEXT NOT NULL,
        optionD TEXT NOT NULL,
        correctAnswer TEXT NOT NULL
      )
    ''');
  }

  // Insert a question into the database
  Future<void> insertQuiz(Quiz quiz) async {
    final db = await database;
    await db.insert('quiz', quiz.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // Retrieve all quiz questions
  Future<List<Quiz>> fetchQuizzes() async {
    final db = await database;
    final result = await db.query('quiz');

    return result.map((e) => Quiz.fromMap(e)).toList();
  }
}
