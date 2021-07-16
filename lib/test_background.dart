import 'package:flutter/material.dart';

class TestBackground extends StatelessWidget {
  const TestBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathClass(),
      child: SizedBox(
        width: 375,
        height: 378,
        child: Image.asset(
          'assets/background.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final leg = size.height / 3;
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - leg);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
