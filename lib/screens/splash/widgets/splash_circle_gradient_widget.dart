import 'package:flutter/material.dart';
import 'package:stream_app/screens/splash/widgets/splash_high_circle_gradient_widget.dart';
import 'package:stream_app/screens/splash/widgets/splash_low_circle_gradient_widget.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class SplashCircleGradientWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool hasImage;
  const SplashCircleGradientWidget({
    Key? key,
    this.hasImage = false,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          height: height,
          child: hasImage ? ClipRRect(
            child: Image(
              image: AssetImage('assets/img/twitch_logo.png'),
            ),
          ) : Container(),
        ),
        Positioned(
          top: size.height * .1,
          right: -size.width * .1,
          child: CircleGradient(
            width: 185.0,
            height: 185.0,
            gradientColor: TwitchTheme.kPriPink,
          ),
        ),
        Positioned.fill(
          top: size.height * .05,
          left: size.width * .1,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleGradient(
              width: 150.0,
              height: 150.0,
              gradientColor: TwitchTheme.kWind,
            ),
          ),
        ),
        Positioned(
          top: size.height * .15,
          left: size.width * .1,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleGradient(
              width: 150.0,
              height: 150.0,
              gradientColor: TwitchTheme.kSecGreen,
            ),
          ),
        ),
        Positioned(
          top: size.height * .28,
          left: -size.height * .06,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleGradient(
              width: 185.0,
              height: 185.0,
              gradientColor: TwitchTheme.kYellow,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: -size.height * .06,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleLowGradient(
              width: 185.0,
              height: 185.0,
              gradientColor: TwitchTheme.kYellow,
            ),
          ),
        ),
        Positioned(
          bottom: size.height * .15,
          left: size.width * .2,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleLowGradient(
              width: 185.0,
              height: 185.0,
              gradientColor: TwitchTheme.kSecGreen,
            ),
          ),
        ),
        Positioned(
          top: size.height * .45,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleLowGradient(
              width: 185.0,
              height: 185.0,
              gradientColor: TwitchTheme.kWind,
            ),
          ),
        ),
      ],
    );
  }
}

