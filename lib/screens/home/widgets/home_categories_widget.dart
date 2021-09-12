import 'package:flutter/material.dart';
import 'package:stream_app/data/categories.dart';
import 'package:stream_app/shared/twitch_text.dart';
import 'package:stream_app/ui/twitch_theme.dart';

class HomeCategoriesWidget extends StatefulWidget {
  HomeCategoriesWidget({Key? key}) : super(key: key);

  @override
  _HomeCategoriesWidgetState createState() => _HomeCategoriesWidgetState();
}

class _HomeCategoriesWidgetState extends State<HomeCategoriesWidget> {
  Widget _categoriesBuilder(Size size,
      {required String icon, required String name}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * .08,
          height: size.height * .05,
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage(
              icon,
            ),
          ),
        ),
        TextGlobal(
          value: name,
          fontSize: size.width * .032,
          fontFamily: 'Poppins',
          fontColor: TwitchTheme.kSecWhite,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: double.infinity,
      child: ListView.separated(
        itemCount: Categories.categories.length,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return _categoriesBuilder(
            size,
            icon: "${Categories.categories[index].icon}",
            name: "${Categories.categories[index].name}",
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            width: size.width * .09,
          );
        },
      ),
    );
  }
}
