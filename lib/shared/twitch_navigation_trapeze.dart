import 'package:flutter/material.dart';
import 'package:stream_app/ui/twitch_theme.dart';

//Copy this CustomPainter code to the Bottom of the File
class TrapezePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.18, 0);
    path.lineTo(0, size.height * 0.50);
    path.lineTo(size.width * 0.50, size.height);
    path.lineTo(size.width, size.height * 0.50);
    path.lineTo(size.width * 0.81, 0);
    path.lineTo(size.width * 0.17, 0);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = TwitchTheme.kPriPurple.withOpacity(1.0);
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
