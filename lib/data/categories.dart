class Categories {
  final String icon;
  final String name;

  Categories({required this.icon, required this.name,});

  static List<Categories> categories = [
    Categories(icon: 'assets/img/action.png', name: 'Acción'),
    Categories(icon: 'assets/img/sports.png', name: 'Sports'),
    Categories(icon: 'assets/img/rpg.png', name: 'RPG'),
    Categories(icon: 'assets/img/music.png', name: 'Música'),
  ];
}