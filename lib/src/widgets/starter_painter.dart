part of widgets;

class StarterPainter extends StatelessWidget {
  const StarterPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _StarterCustomPainter(),
      child: Image.asset(
        'assets/starter_background3.png',
        alignment: Alignment.topCenter,
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class _StarterCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    double maxHeight = 1000.h;
    double maxWidth = size.width.abs();
    double radius = 400.r;
    double borderRadius = 50.r;
    double sideOffset = (maxWidth - radius - (4 * borderRadius)) / 2;

    path.moveTo(0, 0);
    path.relativeLineTo(0, maxHeight - borderRadius);
    path.relativeQuadraticBezierTo(0, borderRadius, borderRadius, borderRadius);

    path.relativeLineTo(sideOffset, 0);
    path.relativeQuadraticBezierTo(
        borderRadius - 12.r, 0, borderRadius, -borderRadius);

    path.relativeArcToPoint(Offset(radius, 0), radius: Radius.circular(220.r));

    path.relativeQuadraticBezierTo(
        12.r, borderRadius, borderRadius, borderRadius);
    path.relativeLineTo(sideOffset, 0);

    path.relativeQuadraticBezierTo(
        borderRadius, 0, borderRadius, -borderRadius);
    path.relativeLineTo(0, -maxHeight);
    path.close();

    final Paint paint = Paint()..color = mainColor;
    canvas.drawShadow(path, Colors.black, 16, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
