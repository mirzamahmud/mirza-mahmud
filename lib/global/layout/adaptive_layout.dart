import 'package:flutter/material.dart';
import 'package:mirza_mahmud/global/constants/layout_constant.dart';

class AdaptiveLayout extends StatelessWidget {

  final Widget? mobileScreenLayout;
  final Widget? tabletScreenLayout;
  final Widget? desktopScreenLayout;

  const AdaptiveLayout({
    this.mobileScreenLayout,
    this.tabletScreenLayout,
    this.desktopScreenLayout,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if(constraint.minWidth > mobileMinWidth && constraint.maxWidth < mobileMaxWidth){
          return mobileScreenLayout!;
        } else if(constraint.minWidth > tabletMinWidth && constraint.maxWidth < tabletMaxWidth){
          return tabletScreenLayout!;
        }else {
          return desktopScreenLayout!;
        }
      }
    );
  }
}
