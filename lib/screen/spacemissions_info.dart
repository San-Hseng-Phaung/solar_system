import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:solar_system/models/space_missions.dart';

class SpacemissionsInfo extends StatelessWidget {
  final SpaceMissions spaceMissions;
  const SpacemissionsInfo({super.key, required this.spaceMissions});

 @override
  Widget build(BuildContext context) {
    bool isWebScreen = kIsWeb;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isWebScreen
          ? null
          : AppBar(
              title: Text(
                spaceMissions.name,
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
                  child: ModelViewer(src: spaceMissions.space3d),
                ),
                Expanded(child: spaceCard(spaceMissions, context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget spaceCard(SpaceMissions space, BuildContext context) {
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
                  space.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                space.info,
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