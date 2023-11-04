import 'package:flutter/material.dart';
import 'package:web_project/view/widgets/alignments/app_default_padding.dart';
import 'package:web_project/view/widgets/menu/underlined_header_link.dart';

class TopMenuBar extends StatefulWidget {
  const TopMenuBar({Key? key}) : super(key: key);

  @override
  State<TopMenuBar> createState() => _TopMenuBarState();
}

class _TopMenuBarState extends State<TopMenuBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
        Container(color: Colors.white,child: AppDefaultPaddingWidget(
            customHeight: 4,
            child: Row(
              children: <Widget>[
                Image.asset(
                  height: size.height * .1,
                  width: size.width * .14,
                  "assets/images/hayaland.png",
                ),
                Spacer(),
                const AnimatedUnderlineHeaderLink(text: "コーポレートサイト"),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
                      child: const AnimatedUnderlineHeaderLink(text: "法人のお客様"),
                    ),
                  ],
                ),
                const Icon(
                  Icons.search,
                  size: 35,
                ),
              ],
            )),);
  }
}

