import 'package:flutter/material.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeUserProfileWidget extends StatelessWidget {
  const HomeUserProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        CircleAvatar(
          radius: size.width * .06,
          child: Image(
            width: size.width * .09,
            height: size.height * .09,
            image: AssetImage(
              'assets/img/twitch_logo.png',
            ),
          ),
        ),
        SizedBox(width: size.width * .05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextGlobal(
              value: 'PieroFlutter',
              fontSize: size.width * .045,
              fontFamily: 'Poppins',
              fontColor: TwitchTheme.kSecWhite,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: size.width * .02),
            TextGlobal(
              value: 'Online'.toUpperCase(),
              fontSize: size.width * .03,
              fontFamily: 'Poppins',
              fontColor: TwitchTheme.kSecGreen,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }
}
