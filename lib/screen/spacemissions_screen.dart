import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/models/space_missions.dart';
import 'package:solar_system/screen/spacemissions_info.dart';

class SpaceMissionsScreen extends StatelessWidget {
  const SpaceMissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      bool isweb= kIsWeb;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/images/galaxy.jpg"),fit: BoxFit.fill),
        // ),
        children: [
          // Background Image
          Image.asset(
            'assets/images/galaxy.jpg', // Replace with your image path
            fit: BoxFit.cover, // Ensures the image covers the whole screen
          ),

          Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: spaceMissionsData.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
              crossAxisCount: isweb?3: 2,
              childAspectRatio:isweb ? 1.5 : 0.8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return spaceCard(spaceMissionsData[index],context);
            },
          ),
        ),
        ],
      ),
    );
  }

  Widget spaceCard(SpaceMissions space, BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: SpacemissionsInfo(
              spaceMissions: space,
            ),
          );
        },
      ),
    );
      },
      child: Card(
        color: Colors.grey.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
                child: Image.asset(space.image,
                    height: 130, width: double.infinity, fit: BoxFit.fill)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    space.name,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    space.desc,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 