import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:solar_system/planet.dart';

class PlanetInfo extends StatefulWidget {
  const PlanetInfo(
      {super.key,
      required this.planet});
  final Planet planet;


  @override
  State<PlanetInfo> createState() => _PlantInfoState();
}

class _PlantInfoState extends State<PlanetInfo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> loadModel(String modelPath) async {
    await Future.delayed(Duration(milliseconds: 100)); // Simulate async loading
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.planet.planetName),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedBuilder(animation: _animationController, builder: (context, child){
              return Expanded(
                    child: Hero(
                      tag: widget.planet.planetName,
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: O3D(
                            src: widget.planet.planet3d,
                          ),
                        ),
                      ),
                    ),
                  );
            })
            ,
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black87,
              child: Text(
                widget.planet.planetInfo,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
