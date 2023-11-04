import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_project/utils/styles.dart';

class AnimatedColorHeaderLink extends StatefulWidget {
  final String text;

  const AnimatedColorHeaderLink({
    super.key,
    required this.text,
  });

  @override
  State<AnimatedColorHeaderLink> createState() =>
      _AnimatedUnderlineHeaderLinkState();
}

class _AnimatedUnderlineHeaderLinkState
    extends State<AnimatedColorHeaderLink>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _animation;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

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

        child: Text(
          widget.text,
          style: TextStyle( fontSize: 6, color: _animation?.value ?? const Color(0xff9C9C9C)),
          textScaleFactor: TextsStyles.textScaleFactor(context),
        ));
  }
}
