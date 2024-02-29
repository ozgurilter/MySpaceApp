class PlanetDetail {
  final int position;
  final String name;
  final String description;
  final List<String> images;

  PlanetDetail(
      this.position, {
        required this.name,
        required this.description,
        required this.images,
      });
}

List<PlanetDetail> planets = [
  PlanetDetail(1,
      name: 'Mercury',
      description:
      "Mercury is the smallest planet in our solar system and the closest to the Sun. It has a diameter of about 4,880 kilometers (3,032 miles), making it just a bit larger than Earth's Moon. Despite its small size, Mercury is quite dense. It has a rocky surface covered in craters, similar to the Moon, and its surface temperature varies greatly, ranging from extremely hot during the day to extremely cold at night due to its lack of atmosphere to retain heat.",
      images: [
        'images/mercury2.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmEB9SMfESKznHZjG3fFZv6wFcOcv97P2ZD0w-9GLJ_pi4-ewCRpuT1KmH3EMIwO7kPyQ&usqp=CAU',
      ]),
  PlanetDetail(2,
      name: 'Venus',
      description:
      "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
      images: [
        'images/venus.jpg',
        'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/B12D/production/_114375354_e2b563ae-b81d-4c72-bd6e-3b2644bd3546.jpg',
      ]),
  PlanetDetail(3,
      name: 'Earth',
      description:
      "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
      images: [
        'https://www.earthday.org/wp-content/uploads/2023/04/230404_earthbill_background.png',
        'https://www.thefactsite.com/wp-content/uploads/2015/02/planet-earth-facts.webp',
        'https://cdn.mos.cms.futurecdn.net/Xm5tNGu2r7gT9WzeXqd8S9-1200-80.jpg',
        'images/earth.jpg'
      ]),
  PlanetDetail(4,
      name: 'Mars',
      description:
      "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. ",
      images: [
        'images/mars.jpg',
        'https://sozcuo01.sozcucdn.com/wp-content/uploads/2021/05/17/iecrop/mars-shutterstock_4_3_1621241346.jpg',
        'https://storage.evrimagaci.org/old/content_media/c07989f758aaa5a1336487a89fceabd5.jpg',

      ]),
  PlanetDetail(5,
      name: 'Jupiter',
      description:
      "Jupiter, the largest planet in our solar system, is a gas giant with a fascinating array of features and characteristics. With a diameter of about 139,822 kilometers (86,881 miles), Jupiter's immense size dwarfs that of Earth, stretching over 11 times wider than our planet. Its colossal mass, approximately 318 times greater than Earth's, accounts for a staggering 70% of the total mass of all planets in our solar system combined.",
      images: [
        'https://ia.tmgrup.com.tr/6e06ec/0/0/0/0/800/444?u=https://i.tmgrup.com.tr/es/2021/07/29/jupiterin-en-buyuk-uydusu-ganymedede-su-buhari-bulundu-1627552309038.jpg',
        'images/jupiter.jpg'
        ]),
  PlanetDetail(6,
      name: 'Saturn',
      description:
      "Saturn, the sixth planet from the Sun and the second largest in our solar system, is a breathtaking gas giant renowned for its stunning rings. With a diameter of approximately 116,460 kilometers (72,366 miles), Saturn is about nine times wider than Earth. The most iconic feature of Saturn is undoubtedly its elaborate ring system, consisting of countless icy particles ranging in size from tiny grains to large boulders. ",
      images: [
        'images/saturn.jpg',
        'https://cdn.mos.cms.futurecdn.net/TWpr5dTCno77m2J2aFgLxD-1200-80.jpg',
      ]),
  PlanetDetail(7,
      name: 'Uranus',
      description:
      "Uranus, the seventh planet from the Sun and the third-largest in our solar system, is a unique and enigmatic world with distinct features that set it apart from its neighbors. With a diameter of approximately 50,724 kilometers (31,518 miles), Uranus is roughly four times wider than Earth. One of the most notable aspects of Uranus is its axial tilt, which is significantly tilted relative to its orbit around the Sun. While most planets in our solar system have relatively upright axes of rotation, Uranus appears to be lying on its side, with its poles pointing towards and away from the Sun during different parts of its orbit.  ",
      images: [
        'https://iasbh.tmgrup.com.tr/8fd3df/650/344/0/28/747/420?u=https://isbh.tmgrup.com.tr/sbh/2021/12/14/uranus-gezegeni-ile-ilgili-bilgiler-uranusun-ozellikleri-e1-1639484494745.jpg',
      ]),
  PlanetDetail(8,
      name: 'Neptune',
      description:
      " Neptune, the eighth and farthest planet from the Sun in our solar system, is a distant and mysterious world shrouded in intrigue. With a diameter of approximately 49,244 kilometers (30,598 miles), Neptune is slightly smaller than its neighbor Uranus. Its mass, about 17 times that of Earth, contributes to its gravitational pull and overall characteristics.",
      images: []),
];