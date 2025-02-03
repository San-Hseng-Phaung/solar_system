class Moon {
  final String moonName;
  final String moonInfo;
  final String moonDesc;
  final String image;
  final String moon3d;

  Moon({
    required this.moonName,
    required this.moonInfo,
    required this.image,
    required this.moon3d,
    required this.moonDesc,
  });
}

List<Moon> moonsData = [
  Moon(
      moonName: 'Moon',
      moon3d: 'assets/images/moon.glb',
      image: 'assets/images/moon.png',
      moonDesc: 'Moon of Earth',
      moonInfo:
          " The Moon, Earth's only natural satellite, is the fifth-largest moon in the Solar System and plays a crucial role in stabilizing Earth's climate by influencing tides through its gravitational pull. It orbits Earth at an average distance of 384,400 km (238,855 miles) and completes a full orbit in about 27.3 days. The Moon has no atmosphere, leading to extreme temperature variations between day and night. Its surface is covered with craters, mountains, and vast basaltic plains called maria, formed by ancient volcanic activity. Scientists believe the Moon was created around 4.5 billion years ago, likely from debris left after a massive collision between Earth and a Mars-sized body called Theia. It is also the only celestial body beyond Earth where humans have set foot, with NASA's Apollo 11 mission in 1969 marking the first manned landing."),
  Moon(
      moonName: 'Callisto',
      moon3d: 'assets/images/calisto.glb',
      image: 'assets/images/calisto.png',
      moonDesc: 'Moon of Jupiter',
      moonInfo:
          "Callisto, the second-largest moon of Jupiter and the third-largest moon in the Solar System, is one of the most heavily cratered celestial bodies, indicating an ancient, geologically inactive surface. It orbits 1.88 million km (1.17 million miles) from Jupiter, making it the farthest of the Galilean moons. Callisto is composed of roughly equal parts ice and rock, with no significant internal heat, meaning it lacks tectonic or volcanic activity. Scientists believe it may have a subsurface ocean, raising the possibility of habitable conditions beneath its icy crust. Unlike other major moons of Jupiter, Callisto is outside the planet's intense radiation belts, making it a prime candidate for future human exploration."),
  Moon(
      moonName: "Europa",
      moon3d: 'assets/images/europa.glb',
      image: 'assets/images/europa.png',
      moonDesc: 'Moon of Jupiter',
      moonInfo:
          "Europa, one of Jupiter's four Galilean moons, is one of the most intriguing celestial bodies in the Solar System due to its potential for harboring life. It has a smooth, icy surface crisscrossed with dark streaks, indicating geological activity and a young surface age. Beneath its icy shell, scientists believe there is a global subsurface ocean containing more than twice the water of Earth's oceans, kept in a liquid state by tidal heating from Jupiter’s gravitational pull. Europa’s ocean, combined with the presence of essential chemical elements and energy sources, makes it a prime candidate in the search for extraterrestrial life. NASA’s upcoming Europa Clipper mission aims to explore this possibility further by analyzing the moon's surface and subsurface interactions."),
  Moon(
      moonName: "Ganymede",
      moon3d: 'assets/images/ganymede.glb',
      image: 'assets/images/ganymede.png',
      moonDesc: 'Moon of Jupiter',
      moonInfo:
          "Ganymede, the largest moon in the Solar System and one of Jupiter's Galilean moons, is even bigger than Mercury and features a magnetic field, making it unique among moons. Its surface is a mix of dark, cratered regions and lighter, grooved terrains, indicating geological activity. Scientists believe a vast underground ocean lies beneath its icy crust, potentially containing more water than Earth's oceans. Ganymede's thin oxygen atmosphere, though not breathable, suggests complex interactions with Jupiter's magnetosphere. NASA's upcoming Europa Clipper and ESA's JUICE (Jupiter Icy Moons Explorer) missions will further study Ganymede to uncover its mysteries and potential for supporting life."),
  Moon(
      moonName: 'Io',
      moon3d: 'assets/images/io.glb',
      image: 'assets/images/io.png',
      moonDesc: 'Moon of Jupiter',
      moonInfo:
          "Io is one of Jupiter's moons and is the most volcanically active body in the solar system due to intense tidal heating caused by gravitational interactions with Jupiter and its other moons. It has over 400 active volcanoes, some of which eject sulfur and sulfur dioxide. The surface of Io is covered in a variety of volcanic features, including lava lakes and vast plains of frozen sulfur. Io’s atmosphere is very thin and composed mostly of sulfur dioxide. The moon’s magnetic field is influenced by Jupiter’s powerful magnetosphere, and Io has been extensively studied by spacecraft such as NASA's Galileo and Juno missions. It is an important object for studying tidal heating and extraterrestrial volcanic activity."),
  Moon(
      moonName: "Enceladus",
      moon3d: 'assets/images/enceladus.glb',
      image: 'assets/images/enceladus.png',
      moonDesc: 'Moon of Saturn',
      moonInfo:
          "Enceladus is one of Saturn's moons and is known for its intriguing icy surface, which hides an active subsurface ocean beneath. It has geysers that spew water vapor, ice particles, and organic compounds from its southern polar region, which has made it a prime target for astrobiology research. These geysers suggest the presence of liquid water beneath the icy crust, which may offer the conditions necessary for life. Enceladus' surface is covered in a mix of old, heavily cratered areas and newer, smoother terrains, indicating geologic activity. The moon is also notable for its relatively small size and high reflectivity, which is due to the icy surface. NASA's Cassini spacecraft provided much of our current knowledge about Enceladus, making it a key focus in the search for life beyond Earth."),
  Moon(
      moonName: 'Titan',
      moon3d: 'assets/images/titan.glb',
      image: 'assets/images/titan.png',
      moonDesc: 'Moon of Saturn',
      moonInfo:
          "Titan is Saturn's largest moon and the second-largest in the solar system, known for its thick, nitrogen-rich atmosphere, which is denser than Earth's. It is the only moon in the solar system with a significant atmosphere, composed primarily of nitrogen, methane, and hydrogen. Titan's surface is obscured by a thick layer of clouds, but spacecraft like NASA’s Cassini and Huygens have revealed a landscape featuring rivers, lakes, and seas made of liquid methane and ethane, alongside vast sand dunes. The moon has a dynamic climate system with methane rain and seasonal weather patterns, creating a unique, Earth-like environment, albeit at extremely cold temperatures. Titan’s potential for harboring life or prebiotic chemistry has sparked interest, and it remains a major target for future exploration missions, such as the Dragonfly mission, which aims to study its surface and atmosphere in more detail."),
  Moon(
      moonName: 'Triton',
      moon3d: 'assets/images/triton.glb',
      image: 'assets/images/triton.png',
      moonDesc: 'Moon of Neptune',
      moonInfo:
          "Triton is Neptune's largest moon and is unique for its retrograde orbit, meaning it orbits Neptune in the opposite direction of the planet's rotation. This suggests Triton may have been captured by Neptune’s gravity rather than forming alongside it. The moon’s surface is covered in frozen nitrogen, with geysers that spout nitrogen gas and dust particles into space, indicating subsurface activity. Triton’s icy surface is also home to large, flat plains and deep canyons. The moon has an extremely thin atmosphere composed mainly of nitrogen, with traces of methane, and experiences extremely cold temperatures. Triton is thought to have a subsurface ocean, which makes it a target for studies on the potential for life beyond Earth. Voyager 2’s flyby in 1989 provided much of our knowledge of Triton, though it remains a subject of intrigue for future missions."),
  Moon(
      moonName: 'Phobos',
      moon3d: 'assets/images/phobos.glb',
      image: 'assets/images/phobos.png',
      moonDesc: 'Moon of Mars',
      moonInfo:
          "Phobos is the larger and closer of Mars' two moons, with a highly irregular shape and surface covered in grooves, craters, and dust, likely caused by impacts and tidal forces from Mars. It orbits Mars at an exceptionally close distance—about 3,700 miles above the planet’s surface—and is gradually spiraling inward, meaning it will eventually crash into Mars or break apart in about 30 to 50 million years. Phobos is heavily cratered, with its largest feature being the Stickney crater, which is about 9 miles wide. The moon’s low gravity and proximity to Mars result in rapid orbital decay, and scientists have speculated that Phobos could be a captured asteroid or the remnant of a larger body."),
];
