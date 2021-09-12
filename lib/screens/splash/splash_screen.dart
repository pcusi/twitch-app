import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stream_app/screens/home/home_screen.dart';
import 'package:stream_app/screens/splash/widgets/splash_circle_gradient_widget.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void splashScreenDuration() {
    Future.delayed(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen())));
  }
  
  @override
  void initState() { 
    super.initState();
    splashScreenDuration();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      TwitchTheme.kPriPurple,
                      TwitchTheme.kPriDarkPurple,
                    ],
                    radius: 2.0,
                  ),
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: SplashCircleGradientWidget(
                    width: size.width,
                    height: size.height,
                    hasImage: true,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
