import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_project/utils/styles.dart';

class AnimatedUnderlineHeaderLink extends StatefulWidget {
  final String text;

  const AnimatedUnderlineHeaderLink({
    super.key,
    required this.text,
  });

  @override
  State<AnimatedUnderlineHeaderLink> createState() =>
      _AnimatedUnderlineHeaderLinkState();
}

class _AnimatedUnderlineHeaderLinkState
    extends State<AnimatedUnderlineHeaderLink> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (value) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            isHovered = false;
          });
        },
        child: Column(
          children: [
            Text(
              widget.text,
              style: TextsStyles.topHeaderTextStyle,
              textScaleFactor: TextsStyles.textScaleFactor(context),
            ),
            AnimatedContainer(
              color: Colors.black,
              height: 2.4,
              width: isHovered ? widget.text.length * 12 : 0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.fastOutSlowIn,
            )
          ],
        ));
  }
}