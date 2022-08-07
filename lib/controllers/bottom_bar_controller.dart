import 'package:egegen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  static const defaultPadding = EdgeInsets.only(bottom: 5);
  List<BottomNavigationBarItem> bottomBarList = [
    BottomNavigationBarItem(
        icon: Padding(
          padding: defaultPadding,
          child: SvgPicture.asset(
            AppConstants.iconHome,
          ),
        ),
        label: "home".tr),
    BottomNavigationBarItem(
        icon: Padding(
          padding: defaultPadding,
          child: SvgPicture.asset(
            AppConstants.iconOffer,
          ),
        ),
        label: "offers".tr),
    const BottomNavigationBarItem(icon: SizedBox(), label: ""),
    BottomNavigationBarItem(
        icon: Padding(
          padding: defaultPadding,
          child: SvgPicture.asset(
            AppConstants.iconLocation,
          ),
        ),
        label: "map".tr),
    BottomNavigationBarItem(
        icon: Padding(
          padding: defaultPadding,
          child: SvgPicture.asset(
            AppConstants.iconProfile,
          ),
        ),
        label: "profile".tr),
  ];
}
