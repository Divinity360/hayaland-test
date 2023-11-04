import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedColorIcon extends StatefulWidget {
  final IconData iconData;

  const AnimatedColorIcon({
    super.key,
    required this.iconData,
  });

  @override
  State<AnimatedColorIcon> createState() =>
      _AnimatedUnderlineHeaderLinkState();
}

class _AnimatedUnderlineHeaderLinkState
    extends State<AnimatedColorIcon>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _animation;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _animation = ColorTween(begin:const Color(0xff9C9C9C), end: Colors.white)
        .animate(CurvedAnimation(curve: Curves.decelerate, parent: _animationController!))
      ..addListener(() {
        setState(() {});
      });

  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (value) {
          _animationController?.forward();
        },
        onExit: (value) {
          _animationController?.reverse();
        },

        child: Icon(
          widget.iconData, color: _animation?.value ?? const Color(0xff9C9C9C),
        ));
  }
}
