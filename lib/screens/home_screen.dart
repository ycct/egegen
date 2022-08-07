import 'package:egegen/controllers/bottom_bar_controller.dart';
import 'package:egegen/utils/constants.dart';
import 'package:egegen/utils/extensions.dart';
import 'package:egegen/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data.dart';
import '../utils/fonts.dart';
import '../widgets/custom_all_products_listview.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_category_listview.dart';
import '../widgets/custom_hor_listview.dart';
import '../widgets/custom_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomBarController controller = Get.put(BottomBarController());
    const searchBarHeight = 50.0;
    const appBarTotalHeight = 170.0;
    const appBarHeight = appBarTotalHeight - searchBarHeight / 2;
    const highlightsCardHeight = 150.0;
    const highlightsCardWidth = 280.0;
    const categoryCardHeight = 88.0;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
      bottomNavigationBar: BottomBar(
        controller: controller,
      ),
      appBar: CustomAppBar(
          headerWidget: Header(radius: 28, firstName: "name".tr),
          title: "searchFood".tr,
          appBarTotalHeight: appBarTotalHeight,
          appBarHeight: appBarHeight,
          searchBarHeight: searchBarHeight),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppConstants.defaultPadding,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            context.sizedBoxHeightExtraSmall,
            CustomTitle(title: "highlights".tr),
            context.sizedBoxHeightExtraSmall,
            CustomHighlightsListView(
              list: highlightsModelList,
              height: highlightsCardHeight,
              width: highlightsCardWidth,
              discount: 'discount'.tr,
              point: 'point'.tr,
            ),
            context.sizedBoxHeightExtraSmall,
            CustomCategoryListView(
                height: categoryCardHeight, list: categoryModelList),
            context.sizedBoxHeightExtraSmall,
            CustomTitle(title: "allProducts".tr),
            context.sizedBoxHeightExtraSmall,
            ...allProductsList.map(
              (e) => CustomAllProductListView(
                height: highlightsCardHeight + 10,
                productName: e.productName,
                image: e.image,
                discountedPrice: e.discountedPrice,
                info: e.info,
                productPrice: e.productPrice,
                storeName: e.storeName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String firstName;
  final double radius;

  const Header({Key? key, required this.radius, required this.firstName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppConstants.defaultPadding,
        left: AppConstants.defaultPadding,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: CustomThemeData.whiteColor,
            child: CircleAvatar(
              radius: radius - 2,
              backgroundImage: const AssetImage(
                AppConstants.profileImage,
              ),
            ),
          ),
          context.sizedBoxWidthExtraSmall,
          RichText(
            text: TextSpan(
              text: 'hi'.tr,
              style: customFont16SemiBold.copyWith(
                  color: CustomThemeData.whiteColor),
              children: [
                TextSpan(
                  text: firstName,
                  style: customFont16SemiBold.copyWith(
                    color: context.primaryColorDark,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.primaryColorLight,
      onPressed: () {},
      child: const Icon(
        Icons.search,
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final BottomBarController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: context.primaryColorLight,
        unselectedItemColor: context.disabledColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: controller.bottomBarList);
  }
}
