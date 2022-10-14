import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final Color mycolor;
  final String txt;
  const GameButton({super.key, required this.mycolor, required this.txt});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(225, (200 * 0.3730886850152905).toDouble()),
      painter: RPSCustomPainter(mycolor: mycolor, txt: txt),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color mycolor;
  final String txt;
  RPSCustomPainter({required this.mycolor, required this.txt});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color.fromRGBO(31, 36, 48, 1);
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.05504587),
            bottomLeft: Radius.circular(size.width * 0.05504587),
            topLeft: Radius.circular(size.width * 0.05504587),
            topRight: Radius.circular(size.width * 0.05504587)),
        paint0Fill);

    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
    var textSpan = TextSpan(
      text: txt,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    const offset = Offset(17, 47);
    textPainter.paint(canvas, offset);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = mycolor;
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0, 0, size.width, size.height * 0.65),
            topLeft: Radius.circular(size.width * 0.05504587),
            topRight: Radius.circular(size.width * 0.05504587)),
        paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
