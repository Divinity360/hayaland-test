import 'package:flutter/material.dart';
import 'package:web_project/utils/styles.dart';
import 'package:web_project/view/widgets/alignments/app_default_padding.dart';

class CenterSectionDescription extends StatelessWidget {
  const CenterSectionDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppDefaultPaddingWidget(
      customHeight: 15,
        child:  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                height: size.height * .05,
                width: size.width * .05,
                "assets/images/logo_icon.png",
              ),
              Text(
                'Buyback',
                style: TextsStyles.h1,
                textScaleFactor: TextsStyles.textScaleFactor(context),
              ),
            ],
          ),
        Text(
          'あなたのデバイス、新しい価値へ。\nYour Device, Onto New Value.',
          style: TextsStyles.h1,
          textAlign: TextAlign.center,
          textScaleFactor: TextsStyles.textScaleFactor(context),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "With Apple Trade In, you can get a great value in exchange for your current de and apply it towards a purchase today. And you can do it all online (iPhone) c any Apple Store (iPhone, Mac notebooks, iPad and Apple Watch). If your de isn't eligible for credit, we'll help you recycle it for free. It's a win-win for you the planet.",
            style: TextsStyles.desc,
            textAlign: TextAlign.center,
            textScaleFactor: TextsStyles.textScaleFactor(context),
          ),
        ),
      ],
    ));
  }
}
