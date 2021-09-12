import 'package:flutter/material.dart';
import 'package:stream_app/ui/twitch_theme.dart';

import 'home_message_profile_widget.dart';
import 'home_user_profile_widget.dart';

class HomeContainerProfileWidget extends StatelessWidget {
  const HomeContainerProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * .19,
      padding: EdgeInsets.all(size.width * .05),
      decoration: BoxDecoration(
        color: TwitchTheme.kSecWhite.withOpacity(.08),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .5,
            child: HomeUserProfileWidget(),
          ),
          Container(
            width: size.width * .35,
            child: HomeMessageProfileWidget(),
          ),
        ],
      ),
    );
  }
}
