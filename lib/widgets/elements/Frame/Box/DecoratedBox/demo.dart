import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DecoratedBoxCreate extends StatelessWidget {
  DecoratedBoxCreate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-0.5, -0.6),
          radius: 0.15,
          colors: <Color>[const Color(0xFFEEEEEE), Colors.black],
          stops: <double>[0.9, 1.0],
        ),
      ),
    );
  }
}
