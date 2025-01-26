class Planet {
  final String planetName;
  final String planetInfo;
  final double planetSizes;
  final String planetImg;
  final String planet3d;
  final double orbitRadius;
  final double orbitSpeeds;

  Planet(
      {required this.planetInfo,
      required this.planetSizes,
      required this.planetImg,
      required this.planet3d,
      required this.planetName,
      required this.orbitRadius,
      required this.orbitSpeeds});
}

final List<Planet> planetData = [
  Planet(
      planetInfo: "Mercury is the closest planet to the Sun.",
      planetSizes: 30,
      planetImg: "assets/images/mercury.png",
      planet3d: "assets/images/mercury1.glb",
      orbitRadius: 50,
      orbitSpeeds:0.05 ,
      planetName: "Mercury"),
  Planet(
      planetInfo: "Venus is the second planet and has a thick atmosphere.",
      planetSizes: 35,
      planetImg: "assets/images/venus.png",
      planet3d: "assets/images/venus1.glb",
      orbitRadius: 75,
      orbitSpeeds: 0.03,
      planetName: "Venus"),
  Planet(
      planetInfo: "Earth is the third planet and home to life.",
      planetSizes: 25,
      planetImg: "assets/images/earth.png",
      planet3d: "assets/images/earth1.glb",
      orbitRadius:100,
      orbitSpeeds:0.02 ,
      planetName: "Earth"),
  Planet(
      planetInfo: "Mars is the fourth planet, known as the Red Planet.",
      planetSizes: 45,
      planetImg: "assets/images/mars.png",
      planet3d: "assets/images/mars.glb",
      orbitRadius:125,
      orbitSpeeds:0.01 ,
      planetName: "Mars"),
  Planet(
      planetInfo: "Jupiter is the largest planet in the Solar System.",
      planetSizes: 45,
      planetImg: "assets/images/jupiter.png",
      planet3d: "assets/images/jupiter1.glb",
      orbitRadius:150,
      orbitSpeeds:0.008 ,
      planetName: "Jupiter"),
  Planet(
      planetInfo: "Saturn is known for its stunning ring system.",
      planetSizes: 75,
      planetImg: "assets/images/saturn.png",
      planet3d: "assets/images/saturn1.glb",
      orbitRadius: 175,
      orbitSpeeds: 0.006,
      planetName: "Saturn"),
  Planet(
      planetInfo: "Uranus has a unique blue-green color due to methane.",
      planetSizes: 40,
      planetImg: "assets/images/uranus.png",
      planet3d: "assets/images/uranus1.glb",
      orbitRadius:200,
      orbitSpeeds:0.005 ,
      planetName: "Uranus"),
  Planet(
      planetInfo: "Neptune is the farthest planet and has strong winds.",
      planetSizes: 60,
      planetImg: "assets/images/neptune.png",
      planet3d: "assets/images/neptune.glb",
      orbitRadius:225,
      orbitSpeeds:0.004 ,
      planetName: "Neptune")
];

final Planet sunData=Planet(
      planetInfo: "The Sun is the star at the center of the Solar System.",
      planetSizes: 80.0,
      planetImg: "assets/images/sun.png",
      planet3d: "assets/images/sun.glb",
      orbitRadius:0 ,
      orbitSpeeds:0 ,
      planetName: "Sun");