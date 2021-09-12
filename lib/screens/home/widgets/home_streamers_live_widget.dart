import 'package:flutter/material.dart';
import 'package:stream_app/data/streaming.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeStreamersLiveWidget extends StatefulWidget {
  final Streaming streaming;
  HomeStreamersLiveWidget({Key? key, required this.streaming})
      : super(key: key);

  @override
  _HomeStreamersLiveWidgetState createState() =>
      _HomeStreamersLiveWidgetState();
}

class _HomeStreamersLiveWidgetState extends State<HomeStreamersLiveWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: size.height * .04,
          padding: EdgeInsets.symmetric(
              vertical: size.height * .01, horizontal: size.width * .04),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: TwitchTheme.kPriPink,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextGlobal(
                value: 'En vivo',
                fontSize: size.width * .027,
                fontFamily: 'Poppins',
                fontColor: TwitchTheme.kSecWhite,
              ),
            ],
          ),
        ),
        Container(
          height: size.height * .04,
          padding: EdgeInsets.symmetric(
              vertical: size.height * .01, horizontal: size.width * .04),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.0),
            color: TwitchTheme.kPurpleLight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextGlobal(
                value: "${widget.streaming.viewers.toString()}k personas",
                fontSize: size.width * .027,
                fontFamily: 'Poppins',
                fontColor: TwitchTheme.kSecWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
