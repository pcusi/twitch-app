import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_app/screens/home/widgets/home_categories_widget.dart';
import 'package:stream_app/screens/home/widgets/home_container_profile_widget.dart';
import 'package:stream_app/screens/home/widgets/home_games_widget.dart';
import 'package:stream_app/screens/home/widgets/home_streamers_channel_widget.dart';
import 'package:stream_app/screens/splash/widgets/splash_circle_gradient_widget.dart';
import 'package:stream_app/shared/twitch_bottom_navigation_bar.dart';
import 'package:stream_app/shared/twitch_icons.dart';
import 'package:stream_app/shared/twitch_navigation_trapeze.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/shared/twitch_title.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
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
              Positioned(
                top: 0,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    color: TwitchTheme.kBlueDark.withOpacity(.55),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeContainerProfileWidget(),
                        SizedBox(height: size.height * .02),
                        Container(
                          width: size.width,
                          padding: EdgeInsets.all(size.width * .05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TwitchTitle(title: 'Descubrir'),
                              //categories list
                              SizedBox(height: size.height * .02),
                              Container(
                                width: size.width,
                                height: size.height * .13,
                                padding: EdgeInsets.symmetric(
                                  vertical: size.width * .01,
                                  horizontal: size.width * .1,
                                ),
                                decoration: BoxDecoration(
                                  color: TwitchTheme.kSecWhite.withOpacity(.08),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: HomeCategoriesWidget(),
                              ),
                              SizedBox(height: size.height * .02),
                              TextGlobal(
                                value: 'Canales en vivo',
                                fontSize: size.width * .044,
                                fontFamily: 'Poppins',
                                fontColor: TwitchTheme.kSecWhite,
                                fontWeight: FontWeight.w600,
                              ),
                              HomeStreamersChannelWidget(),
                              TextGlobal(
                                value: 'Juegos recomendados',
                                fontSize: size.width * .044,
                                fontFamily: 'Poppins',
                                fontColor: TwitchTheme.kSecWhite,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: size.height * .02),
                              HomeGamesWidget(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                bottom: size.height * .08,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width * .15,
                    height: size.height * .05,
                    child: CustomPaint(
                      painter: TrapezePainter(),
                      child: Stack(
                        children: [
                          Container(
                            width: size.width * .15,
                            height: size.height * .05,
                          ),
                          Positioned(
                            top: size.height * .014,
                            left: size.width * .05,
                            child: Icon(
                              Twitch.stream,
                              color: TwitchTheme.kSecWhite,
                              size: size.width * .035,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(bottom: 0, child: TwitchBottomNavigationBar()),
              SplashCircleGradientWidget(
                width: size.width,
                height: size.height,
                hasImage: false,
              ),
            ],
          );
        },
      ),
    );
  }
}
