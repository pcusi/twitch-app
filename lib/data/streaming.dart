class Streaming {
  final String image;
  final String streamer;
  final String game;
  final List<StreamingTag> tags;
  final int viewers;

  Streaming({
    required this.image,
    required this.streamer,
    required this.tags,
    required this.game,
    required this.viewers,
  });

  static List<Streaming> streamings = [
    Streaming(
      image: 'assets/img/auron.jpg',
      game: 'Minecraft',
      streamer: 'Auronplay',
      viewers: 100,
      tags: [
        StreamingTag(tag: 'Acción'),
        StreamingTag(tag: 'Risas'),
        StreamingTag(tag: 'Minecraft')
      ],
    ),
    Streaming(
      image: 'assets/img/carola.jpg',
      streamer: 'Carola',
      game: 'Minecraft',
      viewers: 5,
      tags: [
        StreamingTag(tag: 'Acción'),
        StreamingTag(tag: 'Risas'),
        StreamingTag(tag: 'Minecraft')
      ],
    ),
    Streaming(
      image: 'assets/img/ibai.jpg',
      streamer: 'Ibai',
      game: 'Charla',
      viewers: 30,
      tags: [
        StreamingTag(tag: 'Acción'),
        StreamingTag(tag: 'Risas'),
        StreamingTag(tag: 'Minecraft')
      ],
    ),
  ];
}

class StreamingTag {
  final String tag;

  StreamingTag({required this.tag});
}
