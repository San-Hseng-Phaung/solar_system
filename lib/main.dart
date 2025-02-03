import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solar_system/database/insert_questions.dart';
import 'package:solar_system/screen/moons_screen.dart';
import 'package:solar_system/screen/solar_system.dart';
import 'package:solar_system/screen/spacemissions_screen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Moved here

  if (kIsWeb) {
    // ✅ Web: Use `sqflite_common_ffi_web`
    debugPrint("Using Web Database");
    databaseFactory = databaseFactoryFfiWeb;
  } else {
    // ✅ Mobile (Android/iOS): Use default `sqflite` (NO `ffi`)
    debugPrint("Using Mobile Database");
    databaseFactory = databaseFactory; // Default `sqflite`
  }

  runApp(const SolarSystemApp());
}

class SolarSystemApp extends StatefulWidget {
  const SolarSystemApp({super.key});

  @override
  State<SolarSystemApp> createState() => _SolarSystemAppState();
}

class _SolarSystemAppState extends State<SolarSystemApp> {
  int _selectedIndex = 0; // Current index of BottomNavigationBar

  @override
  void initState() {
    super.initState();
    _checkAndInsertQuestions(); // ✅ Call only once
  }

  Future<void> _checkAndInsertQuestions() async {
    final prefs = await SharedPreferences.getInstance();
    bool isInserted = prefs.getBool('questionsInserted') ?? false;

    if (!isInserted) {
      await InsertQuestions.insertSampleQuestions(); // ✅ Insert only once
      await prefs.setBool('questionsInserted', true);
      debugPrint("Questions inserted successfully!");
    } else {
      debugPrint("Questions already inserted.");
    }
  }

  // List of widgets corresponding to the sections
  final List<Widget> _widgetOptions = <Widget>[
    SolarSystemPage(),
    MoonsScreen(),
    SpaceMissionsScreen(),
  ];

  // Function to handle item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgetOptions[_selectedIndex], // Display selected screen
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon:  ImageIcon(
              AssetImage('assets/images/planet_icon.png'), 
              size: 30,
            ),
              label: 'Planets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Moons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rocket_rounded),
              label: 'Space Missions',
            ),
          ],
        ),
      ),
    );
  }
}
