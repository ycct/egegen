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
    const searchBarHeight = 50.0;
    const appBarTotalHeight = 170.0;
    const appBarHeight = appBarTotalHeight - searchBarHeight / 2;
    const highlightsCardHeight = 150.0;
    const highlightsCardWidth = 280.0;
    const categoryCardHeight = 88.0;
    return Scaffold(
      appBar: CustomAppBar(
          headerWidget: const Header(radius: 28),
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
            CustomHorListView(
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
  final double radius;

  const Header({Key? key, required this.radius}) : super(key: key);

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
                  text: 'name'.tr,
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
