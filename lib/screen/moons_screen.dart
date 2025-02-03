import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/models/moon.dart';
import 'package:solar_system/screen/moon_info.dart';

class MoonsScreen extends StatelessWidget {
  const MoonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      bool isweb= kIsWeb;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/galaxy.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: moonsData.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: isweb?3: 2,
              childAspectRatio:isweb ? 1.5 : 0.8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return moonCard(moonsData[index],context);
            },
          ),
        ),
      ),
    );
  }

  Widget moonCard(Moon moon, BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: MoonInfo(
              moon: moon,
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
                child: Image.asset(moon.image,
                    height: 130, width: double.infinity, fit: BoxFit.contain)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moon.moonName,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    moon.moonDesc,
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
