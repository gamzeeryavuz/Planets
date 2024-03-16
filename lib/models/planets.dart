class PlanetsModel {
  final String? image;
  final String? name;
  final double? size;
  final int? distanceFromSun;

  PlanetsModel(
      {required this.size,
      required this.distanceFromSun,
      required this.image,
      required this.name});
}

List<PlanetsModel> planets = [
  PlanetsModel(
      image: 'mercury.png',
      name: 'Mercury',
      size: 4879,
      distanceFromSun: 57900000),
  PlanetsModel(
      image: 'venus.png',
      name: 'Venus',
      size: 12104,
      distanceFromSun: 108200000),
  PlanetsModel(
      image: 'earth.png',
      name: 'Earth',
      size: 12756,
      distanceFromSun: 149600000),
  PlanetsModel(
      image: 'mars.png', name: 'Mars', size: 6805, distanceFromSun: 227900000),
  PlanetsModel(
      image: 'jupiter.png',
      name: 'Jupiter',
      size: 142984,
      distanceFromSun: 778300000),
  PlanetsModel(
      image: 'saturn.png',
      name: 'Saturn',
      size: 120536,
      distanceFromSun: 1426720000),
  PlanetsModel(
      image: 'uranus.png',
      name: 'Uranus',
      size: 51118,
      distanceFromSun: 2870970000),
  PlanetsModel(
      image: 'neptunes.png',
      name: 'Neptunes',
      size: 49528,
      distanceFromSun: 4498250000),
  PlanetsModel(
      image: 'pluto.png',
      name: 'Pluto',
      size: 2376.6,
      distanceFromSun: 5906376272),
];
String astronomicalNews =
    'Dünyanın dört bir yanında insanlar uzun zamandır yıldızlara bakıyor ve onlarda bir anlam buluyor.  ';
