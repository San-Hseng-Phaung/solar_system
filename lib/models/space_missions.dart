class SpaceMissions {
  final String name;
  final String info;
  final String image;
  final String space3d;
  final String desc;

  SpaceMissions({
    required this.name,
    required this.info,
    required this.image,
    required this.space3d,
    required this.desc,
  });
}

List<SpaceMissions> spaceMissionsData = [
  SpaceMissions(
      name: 'Voyager',
      info:
          "The Voyager space missions consist of Voyager 1 and Voyager 2, launched by NASA in 1977 to explore the outer planets and beyond. Initially designed for a five-year mission to study Jupiter and Saturn, both spacecraft far exceeded expectations. Voyager 2 is the only spacecraft to have visited all four gas giants—Jupiter, Saturn, Uranus, and Neptune—sending back groundbreaking data and images. Voyager 1, now the farthest human-made object from Earth, entered interstellar space in 2012**, while Voyager 2 followed in 2018. Both carry the Golden Record, a time capsule with sounds and images of Earth, intended to communicate with potential extraterrestrial life. Despite dwindling power, the probes continue transmitting valuable data from the edge of the solar system, contributing to our understanding of interstellar space.",
      image: 'assets/images/voyager.jpg',
      space3d: 'assets/images/voyager.glb',
      desc: 'Launched by NASA'),
  SpaceMissions(
      name: 'Cassini-Huygens',
      info:
          'The Cassini-Huygens mission, a collaboration between NASA, ESA, and ASI, was launched on October 15, 1997, and studied Saturn, its rings, and moons. The Cassini spacecraft entered Saturn\'s orbit on July 1, 2004, and provided detailed data on the planet\'s atmosphere, rings, and moons. The Huygens probe successfully landed on Titan on January 14, 2005, revealing lakes of liquid methane. Cassini discovered liquid water beneath the ice of moons like Enceladus and Titan. The mission concluded on September 15, 2017, when Cassini was deliberately sent into Saturn\'s atmosphere, providing a wealth of groundbreaking data that significantly advanced planetary science.',
      image: 'assets/images/cassini_huygens.jpg',
      space3d: 'assets/images/cassini_huygens.glb',
      desc: 'Collaborative project by NASA, ESA, and ASI'),
  SpaceMissions(
      name: 'Parker Solar Probe',
      info:
          'The Parker Solar Probe, launched by NASA on August 12, 2018, is the first spacecraft designed to fly directly into the Sun\'s outer atmosphere. Its mission aims to gather data to help scientists understand the Sun\'s behavior, solar wind, and the solar corona. The probe travels closer to the Sun than any previous spacecraft, using advanced heat shielding to protect its instruments from extreme temperatures. Over its seven-year mission, Parker Solar Probe will make multiple orbits around the Sun, gradually getting closer to it, and collect data on solar particles, magnetic fields, and the solar wind. This mission is crucial for advancing our understanding of solar dynamics and improving space weather predictions that affect Earth.',
      image: 'assets/images/parker_solar_probe.jpg',
      space3d: 'assets/images/parker_solar_probe.glb',
      desc: 'Launched by NASA'),
  SpaceMissions(
      name: 'Hubble Space Telescope (HST)',
      info:
          'The Hubble Space Telescope (HST), launched on April 24, 1990, is one of the most important and iconic space observatories. Positioned outside Earth\'s atmosphere, Hubble provides unprecedented views of the universe in visible, ultraviolet, and infrared light, free from the distortion caused by Earth\'s atmosphere. Its observations have revolutionized our understanding of the cosmos, allowing scientists to measure the rate of expansion of the universe, study distant galaxies, explore the birth and death of stars, and investigate black holes. Hubble\'s stunning images have captured some of the most detailed and awe-inspiring photos of space, including the famous "Pillars of Creation" and the "Hubble Deep Field." Hubble continues to provide groundbreaking discoveries, even decades after its launch, and is an essential tool for astronomers worldwide.',
      image: 'assets/images/hubble.jpg',
      space3d: 'assets/images/hubble.glb',
      desc: 'Launched by NASA'),
  SpaceMissions(
      name: 'Europa Clipper',
      info:
          'The Europa Clipper mission is a NASA mission set to explore Europa, one of Jupiter\'s moons, which is considered one of the most promising places to search for signs of life beyond Earth. Scheduled for launch in the 2020s, Europa Clipper aims to study Europa\'s ice-covered ocean in detail, investigating its potential habitability. The spacecraft will conduct detailed reconnaissance of Europa\'s surface and subsurface, including its icy shell, ocean, and geological activity. It will use a suite of scientific instruments to study the moon\'s ice, surface features, subsurface ocean, and its potential for supporting life. The mission will launch aboard a Falcon Heavy rocket and is expected to arrive at Europa in the 2030s, marking a significant step in understanding Jupiter\'s moons and the conditions for life in the outer solar system.',
      image: 'assets/images/europa_clipper.jpg',
      space3d: 'assets/images/europa_clipper.glb',
      desc: 'Launched by NASA'),

];
