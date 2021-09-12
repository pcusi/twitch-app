import 'package:flutter/material.dart';
import 'package:stream_app/shared/twitch_icons.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeMessageProfileWidget extends StatelessWidget {
  const HomeMessageProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Twitch.chat,
          size: size.width * .07,
          color: TwitchTheme.kSecWhite,
        ),
        SizedBox(width: size.width * .05),
        Container(
          width: size.width * .18,
          height: size.height * .04,
          decoration: BoxDecoration(
            color: TwitchTheme.kSecWhite.withOpacity(.35),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/img/coins.png',
                    ),
                  ),
                  SizedBox(width: size.height * .008),
                  TextGlobal(
                    value: '200',
                    fontSize: size.width * .04,
                    fontFamily: 'Poppins',
                    fontColor: TwitchTheme.kSecWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
