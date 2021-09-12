class Games {
  final String image;

  Games({required this.image});

  static List<Games> games = [
    Games(image: 'assets/img/dota.jpg'),
    Games(image: 'assets/img/csgo.jpg'),
    Games(image: 'assets/img/minecraft.jpg'),
    Games(image: 'assets/img/gta.jpg'),
  ];

}