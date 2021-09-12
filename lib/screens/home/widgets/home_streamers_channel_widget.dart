import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_app/data/streaming.dart';
import 'package:stream_app/screens/home/widgets/home_streamers_live_widget.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeStreamersChannelWidget extends StatefulWidget {
  HomeStreamersChannelWidget({Key? key}) : super(key: key);

  @override
  _HomeStreamersChannelWidgetState createState() =>
      _HomeStreamersChannelWidgetState();
}

class _HomeStreamersChannelWidgetState
    extends State<HomeStreamersChannelWidget> {
  int pageSelected = 1;

  void onPageChanged(int index) {
    setState(() {
      pageSelected = index;
    });
  }

  Widget streamerAdvice(Size size,
      {required String streamer, required String game}) {
    return RichText(
      text: TextSpan(
        text: streamer,
        style: TextStyle(
            fontSize: size.width * .035,
            fontFamily: 'Poppins',
            color: TwitchTheme.kSecWhite,
            fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: 'está transmitiendo ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: game,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * .4,
      child: PageView.builder(
        itemCount: Streaming.streamings.length,
        scrollDirection: Axis.horizontal,
        controller: PageController(
          viewportFraction: pageSelected == 0 ? 1.0 : 0.9,
          initialPage: pageSelected,
        ),
        onPageChanged: onPageChanged,
        itemBuilder: (_, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 300,
                ),
                width: size.width,
                height: index != pageSelected
                    ? size.height * .15
                    : size.height * .25,
                margin: EdgeInsets.only(
                    left: index == 0 ? 0 : size.width * .02,
                    right: size.width * .02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${Streaming.streamings[index].image}"),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * .02, horizontal: size.width * .05),
                  child: HomeStreamersLiveWidget(
                    streaming: Streaming.streamings[index],
                  ),
                ),
              ),
              SizedBox(height: size.height * .02),
              streamerAdvice(
                size,
                streamer: "${Streaming.streamings[index].streamer} ",
                game: "${Streaming.streamings[index].game} ",
              ),
              SizedBox(height: size.height * .01),
              Row(
                children: Streaming.streamings[index].tags.map(
                  (tag) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: TwitchTheme.kSecWhite.withOpacity(.18),
                      ),
                      margin: EdgeInsets.only(
                        right: size.width * .02,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: size.width * .01,
                          horizontal: size.width * .02),
                      child: TextGlobal(
                        value: tag.tag,
                        fontSize: size.width * .025,
                        fontFamily: 'Poppins',
                        fontColor: TwitchTheme.kSecWhite,
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
