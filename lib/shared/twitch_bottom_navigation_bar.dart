import 'package:flutter/material.dart';
import 'package:stream_app/shared/twitch_icon_container.dart';
import 'package:stream_app/shared/twitch_icons.dart';
import 'package:stream_app/shared/twitch_navigation_bar_clip.dart';

class TwitchBottomNavigationBar extends StatefulWidget {
  TwitchBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _TwitchBottomNavigationBarState createState() =>
      _TwitchBottomNavigationBarState();
}

class _TwitchBottomNavigationBarState extends State<TwitchBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * .1,
      child: CustomPaint(
        painter: TwitchNavigationBarPainter(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * .1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * .2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwitchIconContainer(
                          isActive: true,
                          icon: Twitch.home,
                        ),
                        TwitchIconContainer(
                          icon: Twitch.search,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * .2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwitchIconContainer(
                          icon: Twitch.map,
                        ),
                        TwitchIconContainer(
                          icon: Twitch.bell,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
