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
      planetInfo: "Mercury is the smallest and closest planet to the Sun in our solar system, with a highly elliptical orbit that brings it as close as 46 million kilometers (29 million miles) and as far as 70 million kilometers (43 million miles) from the Sun. It has a rocky surface covered in craters, much like Earth's Moon, due to a lack of atmosphere to protect it from impacts. Mercury's thin exosphere, composed mostly of oxygen, sodium, hydrogen, helium, and potassium, is too weak to retain heat, resulting in extreme temperature fluctuations—ranging from -173°C (-280°F) at night to 427°C (800°F) during the day. Despite its proximity to the Sun, ice exists in permanently shadowed craters at its poles. Mercury has no moons or rings and completes an orbit around the Sun in just 88 Earth days, but its slow rotation means a single day on Mercury lasts about 59 Earth days. Its proximity to the Sun makes it difficult to observe from Earth, but missions like NASA's MESSENGER have provided valuable insights into its geology, magnetic field, and history.",
      planetSizes: 30,
      planetImg: "assets/images/mercury.png",
      planet3d: "assets/images/mercury1.glb",
      orbitRadius: 50,
      orbitSpeeds:0.05 ,
      planetName: "Mercury"),
  Planet(
      planetInfo: 'Venus, often called Earth\'s "sister planet" due to its similar size and composition, is the second planet from the Sun and the hottest planet in our solar system, with surface temperatures averaging 465°C (869°F)—hot enough to melt lead. This extreme heat is caused by a thick atmosphere composed mainly of carbon dioxide, with clouds of sulfuric acid, creating a runaway greenhouse effect. Venus has a surface pressure 92 times that of Earth\'s, equivalent to being nearly a kilometer underwater. Its surface is rocky and dotted with volcanoes, mountains, and vast plains, but it is obscured by its dense atmosphere. Venus rotates slowly and in the opposite direction to most planets, meaning its sun rises in the west and sets in the east. A day on Venus (243 Earth days) is longer than its year (225 Earth days). Despite its harsh conditions, Venus is a key subject of study for understanding planetary atmospheres, climate change, and the potential for extreme environments in the universe. Missions like NASA\'s Magellan and ESA\'s Venus Express have provided critical data about its surface and atmosphere.',
      planetSizes: 35,
      planetImg: "assets/images/venus.png",
      planet3d: "assets/images/venus1.glb",
      orbitRadius: 75,
      orbitSpeeds: 0.03,
      planetName: "Venus"),
  Planet(
      planetInfo: "Earth is the third planet from the Sun and the only known celestial body to support life. It has a 71% water-covered surface, a protective atmosphere rich in oxygen and nitrogen, and a strong magnetic field that shields it from harmful solar radiation. Earth has one natural satellite, the Moon, which influences tides and stabilizes its axial tilt. The planet's rotation period is about 24 hours, while its orbital period around the Sun takes 365.25 days, causing the leap year every four years. Earth’s climate is regulated by the greenhouse effect, and its diverse ecosystems support millions of species, making it a unique and habitable world in our Solar System.",
      planetSizes: 35,
      planetImg: "assets/images/earth.png",
      planet3d: "assets/images/earth1.glb",
      orbitRadius:100,
      orbitSpeeds:0.02 ,
      planetName: "Earth"),
  Planet(
      planetInfo: "Mars, the fourth planet from the Sun, is known as the Red Planet due to its iron-rich, rust-colored surface. It has a thin atmosphere, primarily composed of carbon dioxide, making it much colder than Earth. Mars has the largest volcano in the Solar System, Olympus Mons, and the deepest canyon, Valles Marineris. It experiences dust storms that can cover the entire planet and has polar ice caps made of water and carbon dioxide. A day on Mars, called a sol, is 24.6 hours long, while a year lasts 687 Earth days. Scientists believe Mars once had liquid water, and ongoing missions, like NASA’s Perseverance rover, are searching for signs of past life and studying the planet for future human exploration.",
      planetSizes: 40,
      planetImg: "assets/images/mars.png",
      planet3d: "assets/images/mars.glb",
      orbitRadius:125,
      orbitSpeeds:0.01 ,
      planetName: "Mars"),
  Planet(
      planetInfo: "Jupiter, the largest planet in the Solar System, is a gas giant primarily composed of hydrogen and helium with no solid surface. It has the strongest magnetic field of all planets and experiences the fastest rotation, completing a day in just 10 hours. Jupiter is famous for the Great Red Spot, a massive storm that has raged for centuries. It has 79 known moons, including Ganymede, the largest moon in the Solar System. The planet’s thick atmosphere features powerful storms and high-speed winds. Jupiter also plays a crucial role in the Solar System by deflecting asteroids and comets with its immense gravity, protecting inner planets like Earth from potential impacts.",
      planetSizes: 45,
      planetImg: "assets/images/jupiter.png",
      planet3d: "assets/images/jupiter1.glb",
      orbitRadius:150,
      orbitSpeeds:0.008 ,
      planetName: "Jupiter"),
  Planet(
      planetInfo: "Saturn, the sixth planet from the Sun, is best known for its spectacular ring system, made of ice, rock, and dust. It is a gas giant, primarily composed of hydrogen and helium, with no solid surface. Saturn has 62 confirmed moons, including Titan, the second-largest moon in the Solar System, which has a thick atmosphere and liquid methane lakes. The planet has an extremely low density, making it the only planet that could float on water if a large enough ocean existed. Saturn’s strong winds, reaching up to 1,800 km/h (1,118 mph), and its hexagonal storm at the north pole make it a unique and dynamic world in our Solar System.",
      planetSizes: 75,
      planetImg: "assets/images/saturn.png",
      planet3d: "assets/images/saturn1.glb",
      orbitRadius: 175,
      orbitSpeeds: 0.006,
      planetName: "Saturn"),
  Planet(
      planetInfo: " Uranus, the seventh planet from the Sun, is a unique ice giant with a pale blue-green color due to methane gas in its atmosphere. Unlike any other planet, Uranus rotates on its side, tilted at 98 degrees, likely due to a massive collision in the past. This extreme tilt causes 42-year-long seasons, where one pole faces the Sun while the other remains in darkness. Its atmosphere contains hydrogen, helium, and icy materials like water, ammonia, and methane, making it the coldest planet in the Solar System, with temperatures dropping to -224°C (-371°F). Uranus has a faint ring system and 27 known moons, with Titania and Oberon being the largest.",
      planetSizes: 40,
      planetImg: "assets/images/uranus.png",
      planet3d: "assets/images/uranus1.glb",
      orbitRadius:200,
      orbitSpeeds:0.005 ,
      planetName: "Uranus"),
  Planet(
      planetInfo: "Neptune, the eighth and farthest planet from the Sun, is a cold and stormy ice giant with a deep blue color due to methane in its atmosphere. It has the strongest winds in the Solar System, reaching speeds of 2,100 km/h (1,300 mph), and features the Great Dark Spot, a massive storm similar to Jupiter's Great Red Spot. Neptune orbits the Sun in 165 Earth years and has 14 known moons, with Triton being the largest; Triton is unique because it orbits Neptune backward (retrograde motion) and is believed to be a captured Kuiper Belt object. Despite being far from the Sun, Neptune emits more heat than it receives, hinting at internal activity.",
      planetSizes: 45,
      planetImg: "assets/images/neptune.png",
      planet3d: "assets/images/neptune.glb",
      orbitRadius:225,
      orbitSpeeds:0.004 ,
      planetName: "Neptune")
];

final Planet sunData=Planet(
      planetInfo: "The Sun is the star at the center of our solar system, a massive sphere of hot plasma that provides the energy necessary for life on Earth. It is primarily composed of hydrogen (about 74%) and helium (about 24%), with trace amounts of heavier elements. The Sun's core, where nuclear fusion occurs, reaches temperatures of about 15 million degrees Celsius (27 million degrees Fahrenheit), converting hydrogen into helium and releasing immense amounts of energy. This energy radiates outward, creating sunlight that takes approximately 8 minutes and 20 seconds to reach Earth. The Sun's surface, or photosphere, has a temperature of about 5,500 degrees Celsius (9,932 degrees Fahrenheit), while its outer atmosphere, the corona, can reach temperatures of over 1 million degrees Celsius (1.8 million degrees Fahrenheit). The Sun's gravitational pull keeps the planets in orbit, and its magnetic activity, such as sunspots and solar flares, influences space weather, affecting satellites, communications, and power grids on Earth.",
      planetSizes: 65.0,
      planetImg: "assets/images/sun.png",
      planet3d: "assets/images/sun.glb",
      orbitRadius:0 ,
      orbitSpeeds:0 ,
      planetName: "Sun");