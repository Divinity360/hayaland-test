import 'package:flutter/material.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:rotating_carousel/rotating_carousel.dart';
import 'package:web_project/utils/styles.dart';

class CenterCarousalView extends StatelessWidget {
  CenterCarousalView({
    super.key,
  });

  final List<Widget> imageSliders =
      [1, 2, 3, 4, 5].map((item) => CarouselItem()).toList();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 370,
      width: size.width,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.apple,
                    size: size.width * .023,
                  ),
                  Text(
                    'Hayaland',
                    style: TextsStyles.h1,
                    textScaleFactor: TextsStyles.textScaleFactor(context),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Text('何にでも使えて、みんながうれしい。',
                      style: TextsStyles.h4,
                      textScaleFactor: TextsStyles.textScaleFactor(context))),
              Text('さらに詳しく>購入＞',
                  style: TextsStyles.h5,
                  textScaleFactor: TextsStyles.textScaleFactor(context)),
            ],
          ),
          RotatingCarousel(
            panels: imageSliders,
            height: 200,
            width: size.width * .35,
            minRatio: 0.5,
            overlapRatio: 0.4,
          ),
        ],
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Icon(
        Icons.apple,
        size: 60,
      ),
    );
  }
}
