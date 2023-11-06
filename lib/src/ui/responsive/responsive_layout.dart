import 'package:flutter/widgets.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;

  const ResponsiveLayout(
      {Key? key, required this.mobileBody, required this.tabletBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensions) {
        if (dimensions.maxWidth < 992) {
          return mobileBody;
        } else {
          return tabletBody;
        }
      },
    );
  }
}
