import 'package:flutter/material.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class TwitchTitle extends StatefulWidget {
  final String title;
  TwitchTitle({Key? key, required this.title,}) : super(key: key);

  @override
  _TwitchTitleState createState() => _TwitchTitleState();
}

class _TwitchTitleState extends State<TwitchTitle> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: size.width * .03,
          height: size.height * .03,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: TwitchTheme.kPriPurple,
            border: Border.all(
              color: TwitchTheme.kPriDarkPurple,
            ),
          ),
        ),
        SizedBox(width: size.width * .03),
        TextGlobal(
          value: widget.title,
          fontSize: size.width * .06,
          fontFamily: 'Poppins',
          fontColor: TwitchTheme.kSecWhite,
          fontWeight: FontWeight.w700,
        )
      ],
    );
  }
}
