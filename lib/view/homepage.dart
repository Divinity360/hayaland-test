import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:web_project/view/widgets/alignments/app_default_padding.dart';
import 'package:web_project/view/widgets/content_view/center_carousal_view.dart';
import 'package:web_project/view/widgets/content_view/center_section_desc.dart';
import 'package:web_project/view/widgets/content_view/center_section_showcase.dart';
import 'package:web_project/view/widgets/menu/sticky_menu_bar.dart';
import 'package:web_project/view/widgets/menu/top_menu_bar.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            const TopMenuBar(),
            StickyHeader(
                header: const StickyMenuBar(),
                content: Column(
                  children: [
                    AppDefaultPaddingWidget(
                      customHeight: 20,
                      child: CenterCarousalView(),
                    ),
                    const CenterSectionDescription(),
                    const CenterSectionGridview(),
                  ],
                ))
          ],
        ),
      ),
      backgroundColor: Color(0xffEEEEEE),
    );
  }
}
