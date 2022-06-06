import 'package:flutter/material.dart';
import 'dart:math'as math;
class CustomShapes extends StatelessWidget {


  const CustomShapes({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 70,
        width: double.infinity,
        child: ClipRect(
          child: CustomPaint(
            painter: MyPainter(
              context: context,
                  color: Theme.of(context).primaryColor,
              circleAlignment: CircleAlignment.topRight

            ),
          ),
        ),
      );
  }
}


enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}
class MyPainter extends CustomPainter{
  BuildContext ?context;
  final CircleAlignment circleAlignment;
  final Color color;
  MyPainter( {this.context,required this.circleAlignment, required this.color,});
  @override
  void paint(Canvas canvas, Size size) {

    final radius = math.min(size.height-15, size.width);
    final offset = circleAlignment == CircleAlignment.topLeft
        ? const Offset(.0, .0)
        : circleAlignment == CircleAlignment.topRight
        ? Offset(size.width, 0)
        : circleAlignment == CircleAlignment.bottomLeft
        ? Offset(.0, size.height)
        : Offset(size.width, size.height);
    canvas.drawCircle(offset, radius, Paint()..color = color);

    final paint = Paint()
      ..color =color
      ..strokeWidth = 30
      ..style = PaintingStyle.stroke;
    final center = Offset(size.width / 100, size.height /15 );

    canvas.drawCircle(
      center,
      50,
      paint,
    );

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset( size.width/3.9, size.height-90),
        height: 160,
        width: 165,
      ),
      0,
      math.pi,
      false,
      Paint()..color = const Color(0xFFFFECE7)
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;
}