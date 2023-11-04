import 'package:flutter/material.dart';
import 'package:web_project/utils/styles.dart';
import 'package:web_project/view/widgets/alignments/app_default_padding.dart';

class CenterSectionGridview extends StatelessWidget {
  const CenterSectionGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppDefaultPaddingWidget(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'まずは、買取価格をチェックする。',
              style: TextsStyles.subTitle,
              textAlign: TextAlign.center,
              textScaleFactor: TextsStyles.textScaleFactor(context),
            )
          ],
        ),
        Row(children: [
          Container(
              height: 350,
              width: size.width * .19,
              margin: const EdgeInsets.only(top: 10, right: 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                    color: Color(0xffE0E0E0), //                   <--- border color
                    width: 3.0,
                  )

              ),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 75, top: 15), child: Text(
                    'スマートフォン',
                    style: TextsStyles.h6,
                    textAlign: TextAlign.center,
                    textScaleFactor: TextsStyles.textScaleFactor(context),
                  ),),
                  Image.asset(
                    width: size.width * .09,
                    "assets/images/iphone.png",
                  )

                ],
              )),
          Column(children: [
            Container(
                height: 170,
                width: size.width * .19,
                margin: const EdgeInsets.only(top: 10, right: 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Color(0xffE0E0E0), //                   <--- border color
                      width: 3.0,
                    )

                ),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 10, top: 15), child: Text(
                      'スマートフォン',
                      style: TextsStyles.h6,
                      textAlign: TextAlign.center,
                      textScaleFactor: TextsStyles.textScaleFactor(context),
                    ),),
                    Image.asset(
                      width: size.width * .074,
                      "assets/images/tab.png",
                    )

                  ],
                )),
            Container(
                height: 170,
                width: size.width * .19,
                margin: const EdgeInsets.only(top: 3, right: 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Color(0xffE0E0E0), //                   <--- border color
                      width: 3.0,
                    )

                ),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(bottom: 10, top: 15), child: Text(
                      'スマートフォン',
                      style: TextsStyles.h6,
                      textAlign: TextAlign.center,
                      textScaleFactor: TextsStyles.textScaleFactor(context),
                    ),),
                    Image.asset(
                      width: size.width * .074,
                      "assets/images/tab.png",
                    )

                  ],
                )),
          ],)
        ],),

      ],
    ));
  }
}
