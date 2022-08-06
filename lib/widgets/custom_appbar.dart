import 'package:egegen/utils/extensions.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBarTotalHeight,
    required this.appBarHeight,
    required this.searchBarHeight,
    required this.title,
    this.headerWidget,
  }) : super(key: key);

  final double appBarTotalHeight;
  final double appBarHeight;
  final double searchBarHeight;
  final String title;
  final Widget? headerWidget;

  @override
  Size get preferredSize => Size.fromHeight(appBarTotalHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarTotalHeight),
      child: Stack(
        children: [
          Container(
            height: appBarHeight,
            decoration: BoxDecoration(
              color: context.primaryColorLight,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(AppConstants.extraSmallRadius),
                bottomRight: Radius.circular(AppConstants.extraSmallRadius),
              ),
            ),
            child: headerWidget,
          ),
          Container(
            color: Colors.transparent,
            height: appBarTotalHeight,
          ),
          Positioned(
            bottom: 0,
            left: AppConstants.defaultPadding,
            right: AppConstants.defaultPadding,
            child: Container(
              decoration: BoxDecoration(
                color: context.disabledColor,
                borderRadius: BorderRadius.circular(
                  AppConstants.ultraSmallRadius,
                ),
              ),
              height: searchBarHeight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.smallPadding,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: title,
                    hintStyle: TextStyle(
                      color: context.hintColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
