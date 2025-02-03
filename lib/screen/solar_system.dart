import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:solar_system/models/planet.dart';
import 'package:solar_system/screen/planet-info.dart';
import 'package:solar_system/screen/quiz_screen.dart';

class SolarSystemPage extends StatefulWidget {
  const SolarSystemPage({super.key});

  @override
  _SolarSystemPageState createState() => _SolarSystemPageState();
}

class _SolarSystemPageState extends State<SolarSystemPage> {
  Map<String, double> angles = {};

  @override
  void initState() {
    super.initState();
    for (var planet in planetData) {
      angles[planet.planetName] = 0;
    }
    _startAnimation();
  }

  void _startAnimation() {
    Future.doWhile(() async {
      if (!mounted) return false;

      setState(() {
        for (var planet in planetData) {
          angles[planet.planetName] =
              (angles[planet.planetName]! + planet.orbitSpeeds) % (2 * pi);
        }
      });
      await Future.delayed(Duration(milliseconds: 16)); // ~60 FPS
      return true;
    });
  }

  @override
  void dispose() {
    angles.clear(); // Optional: Clear angles to free memory
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the available height for the planets
    double screenHeight = MediaQuery.of(context).size.height;
    double bottomNavBarHeight = kBottomNavigationBarHeight;
    double availableHeight = screenHeight - bottomNavBarHeight;

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/galaxy.jpg"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            // Orbit Lines
            for (var planet in planetData)
              CustomPaint(
                painter: OrbitPainter(planet.orbitRadius),
                size: Size(MediaQuery.of(context).size.width, availableHeight),
              ),
            // Planets
            for (var planet in planetData)
              Positioned(
                left: MediaQuery.of(context).size.width / 2 +
                    planet.orbitRadius * cos(angles[planet.planetName]!) -
                    planet.planetSizes / 2,
                top: availableHeight / 2 +
                    planet.orbitRadius * sin(angles[planet.planetName]!) -
                    planet.planetSizes / 2,
                child: Column(
                  children: [
                    Text(
                      planet.planetName, // Display planet name
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showPlanetInfo(planet),
                      child: Image.asset(
                        planet.planetImg,
                        width: planet.planetSizes,
                        height: planet.planetSizes,
                      ),
                    ),
                  ],
                ),
              ),
            // Sun
            Positioned(
                left: MediaQuery.of(context).size.width / 2 -
                    sunData.planetSizes / 2,
                top: availableHeight / 2 - sunData.planetSizes / 2,
                child: GestureDetector(
                  onTap: () => _showPlanetInfo(sunData),
                  child: Image.asset(
                    sunData.planetImg,
                    width: sunData.planetSizes,
                    height: sunData.planetSizes,
                  ),
                )),

            // Quiz Button
            Positioned(
                top: 50,
                right: 20,
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 800),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return FadeTransition(
                              opacity: animation, child: QuizScreen());
                        },
                      ),
                    );
                  },
                  child: Text('Quiz',selectionColor: Colors.white,),
                )),
          ],
        ),
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
    // minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      side: BorderSide(color: Colors.white)
    ),
  );

  void _showPlanetInfo(Planet planet) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: PlanetInfo(
              planet: planet,
            ),
          );
        },
      ),
    );
  }
}

class OrbitPainter extends CustomPainter {
  final double radius;

  OrbitPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5; // Reduced thickness
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
