import 'dart:math';
import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:solar_system/planet-info.dart';
import 'package:solar_system/planet.dart';

void main() {
  runApp(SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SolarSystemPage()
    );
  }
}

class SolarSystemPage extends StatefulWidget {
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
  Widget build(BuildContext context) {
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
                size: MediaQuery.of(context).size,
              ),
            // Planets
            for (var planet in planetData)
              Positioned(
                left: MediaQuery.of(context).size.width / 2 +
                    planet.orbitRadius * cos(angles[planet.planetName]!) -
                    planet.planetSizes / 2,
                top: MediaQuery.of(context).size.height / 2 +
                    planet.orbitRadius * sin(angles[planet.planetName]!) -
                    planet.planetSizes / 2,
                child: GestureDetector(
                  onTap: () => _showPlanetInfo(planet),
                  child: Image.asset(
                    planet.planetImg,
                    width: planet.planetSizes,
                    height: planet.planetSizes,
                    
                  ),
                ),
              ),
            // Sun
            Positioned(
              left: MediaQuery.of(context).size.width / 2 - sunData.planetSizes / 2,
              top: MediaQuery.of(context).size.height / 2 - sunData.planetSizes / 2,
              child: GestureDetector(
                onTap: () => _showPlanetInfo(sunData),
                child: Image.asset(
                  sunData.planetImg,
                  width:sunData.planetSizes,
                  height: sunData.planetSizes,
                ),)
        
            ),
          ],
        ),
      ),
    );
  }

  void _showPlanetInfo(Planet planet) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (_) => PlanetInfoPage(
    //       planetName: planetName,
    //       planetInfo: planetInfo[planetName] ?? "Information not available",
    //       modelPath: planetModels[planetName]!,
    //     ),
    //   ),
    // );

    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child:  PlanetInfo(
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


