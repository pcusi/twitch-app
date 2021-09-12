import 'package:flutter/material.dart';
import 'package:stream_app/ui/twitch_theme.dart';

import 'dart:ui' as ui;

class TwitchNavigationBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3988092, 0);
    path.lineTo(size.width * 0.4987923, size.height * 0.2931034);
    path.lineTo(size.width * 0.5987754, 0);
    path.lineTo(size.width * 0.9516908, 0);
    path.cubicTo(size.width * 0.9783720, 0, size.width,
        size.height * 0.07719233, size.width, size.height * 0.1724138);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.1724138);
    path.cubicTo(0, size.height * 0.07719224, size.width * 0.02162874, 0,
        size.width * 0.04830918, 0);
    path.lineTo(size.width * 0.3988092, 0);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill
      ..shader = ui.Gradient.linear(
        Offset(size.width, size.height / 3),
        Offset(size.width, 0),
        [
          TwitchTheme.kBlue.withOpacity(.95),
          TwitchTheme.kSecWhite.withOpacity(.2),
        ],
      );
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
