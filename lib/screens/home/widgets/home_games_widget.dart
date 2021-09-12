import 'package:flutter/material.dart';
import 'package:stream_app/data/games.dart';

class HomeGamesWidget extends StatefulWidget {
  HomeGamesWidget({Key? key}) : super(key: key);

  @override
  _HomeGamesWidgetState createState() => _HomeGamesWidgetState();
}

class _HomeGamesWidgetState extends State<HomeGamesWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Games.games.length,
        itemBuilder: (_, index) {
          return Container(
            width: size.width * .25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("${Games.games[index].image}"),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(width: size.width * .05);
        },
      ),
    );
  }
}
