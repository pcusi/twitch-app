import 'package:flutter/material.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class TwitchIconContainer extends StatefulWidget {
  final bool isActive;
  final IconData icon;
  TwitchIconContainer({
    Key? key,
    this.isActive = false,
    required this.icon,
  }) : super(key: key);

  @override
  _TwitchIconContainerState createState() => _TwitchIconContainerState();
}

class _TwitchIconContainerState extends State<TwitchIconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          widget.isActive ? BoxShadow(
            color: TwitchTheme.kSecWhite.withOpacity(.2),
            spreadRadius: 15.0,
            blurRadius: 15.0,
          ) : BoxShadow(color: Colors.transparent,),
        ],
      ),
      child: Icon(
        widget.icon,
        color: widget.isActive ? TwitchTheme.kSecWhite : TwitchTheme.kSecGray,
      ),
    );
  }
}
