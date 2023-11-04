import 'package:flutter/cupertino.dart';

class AppDefaultPaddingWidget extends StatelessWidget {
  const AppDefaultPaddingWidget({
    super.key,
    required this.child, this.customHeight, this.customWidth,
  });

  final Widget child;
  final double? customHeight;
  final double? customWidth;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: customWidth ?? size.width * .22, vertical: customHeight ?? 0),
      child: child,
    );
  }
}