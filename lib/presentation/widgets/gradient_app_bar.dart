import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  double get _prefferedHeight => 100;

  final String title;
  final Color gradientBegin;
  final Color gradientEnd;
  final double elevation;
  // final bool hasDrawer = scaffold?.hasDrawer ?? false;

  const GradientAppBar({
    Key key,
    @required this.title,
    @required this.gradientBegin,
    @required this.gradientEnd,
    this.elevation,
  })  : assert(title != null),
        assert(gradientBegin != null),
        assert(gradientEnd != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _prefferedHeight,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[gradientBegin, gradientEnd],
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 10,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}
