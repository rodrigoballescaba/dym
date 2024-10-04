import 'package:flutter/material.dart';
import 'package:tattoos/app/resources/app_colors.dart';

class CutEffectPainter extends CustomPainter {
  final double progress;

  CutEffectPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.green.withOpacity(.3)
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * .1, size.height * .1);
    path.lineTo(
      size.width * (.1 + .8 * progress),
      size.height * (.1 + .8 * progress),
    );

    canvas.drawPath(path, paint);

    final secondPath = Path();
    secondPath.moveTo(size.width * .9, size.height * .1);
    secondPath.lineTo(
      size.width * (.9 - .8 * progress),
      size.height * (.1 + .8 * progress),
    );

    canvas.drawPath(secondPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
