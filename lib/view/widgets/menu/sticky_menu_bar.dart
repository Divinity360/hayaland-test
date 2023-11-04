import 'package:flutter/material.dart';
import 'package:web_project/view/widgets/alignments/app_default_padding.dart';
import 'package:web_project/view/widgets/menu/animated_color_header_link.dart';
import 'package:web_project/view/widgets/menu/animated_color_icon.dart';
import 'package:web_project/view/widgets/menu/underlined_header_link.dart';

class StickyMenuBar extends StatefulWidget {
  const StickyMenuBar({Key? key}) : super(key: key);

  @override
  State<StickyMenuBar> createState() => _StickyMenuBarState();
}

class _StickyMenuBarState extends State<StickyMenuBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.black,
        width: size.width,
        child: const AppDefaultPaddingWidget(
            customHeight: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AnimatedColorHeaderLink(text: "ホーム"),
                AnimatedColorHeaderLink(text: "ノョップ"),
                AnimatedColorHeaderLink(text: "アウトレット"),
                AnimatedColorHeaderLink(text: "ガイド"),
                AnimatedColorHeaderLink(text: "よくある質問"),
                AnimatedColorHeaderLink(text: "お問い合わせ"),
                AnimatedColorIcon(
                  iconData: Icons.shopping_cart,
                ),
              ],
            )));
  }
}
