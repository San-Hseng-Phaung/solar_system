import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:solar_system/models/moon.dart';

class MoonInfo extends StatelessWidget {
  final Moon moon;
  const MoonInfo({super.key, required this.moon});

  @override
  Widget build(BuildContext context) {
    bool isWebScreen = kIsWeb;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isWebScreen
          ? null
          : AppBar(
              title: Text(
                moon.moonName,
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
          padding: isWebScreen ? EdgeInsets.all(0) : EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: ModelViewer(src: moon.moon3d),
                ),
                Expanded(child: mooncard(moon, context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget mooncard(Moon moon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      color: Colors.grey.withOpacity(0.5), // Semi-transparent card color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  moon.moonName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                moon.moonInfo,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
