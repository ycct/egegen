import 'package:egegen/utils/constants.dart';
import 'package:egegen/utils/extensions.dart';
import 'package:egegen/utils/fonts.dart';
import 'package:flutter/material.dart';

class CustomAllProductListView extends StatelessWidget {
  final String image;
  final String productName;
  final double productPrice;
  final double discountedPrice;
  final String storeName;
  final String info;
  final double height;

  const CustomAllProductListView({
    Key? key,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.discountedPrice,
    required this.storeName,
    required this.info,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultCardPadding =
        EdgeInsets.symmetric(horizontal: AppConstants.extraSmallPadding);
    return Padding(
      padding: const EdgeInsets.only(right: AppConstants.defaultPadding),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Card(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: AppConstants.ultraSmallPadding,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: defaultCardPadding,
                      child: TitleAndPrice(
                        title: productName,
                        titleStyle: customFont14SemiBold,
                      ),
                    ),
                    Padding(
                      padding: defaultCardPadding,
                      child: TitleAndPrice(
                        title: storeName,
                        titleStyle: customFont12SemiBold.copyWith(
                          color: context.secondaryHeaderColor,
                        ),
                        price: productPrice.toString(),
                        priceStyle: customFont8SemiBold.copyWith(
                          color: context.secondaryHeaderColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Padding(
                      padding: defaultCardPadding,
                      child: TitleAndPrice(
                        title: info,
                        titleStyle: customFont10,
                        price: discountedPrice.toString(),
                        priceStyle: customFont16SemiBold,
                      ),
                    ),
                    const SizedBox(
                      height: AppConstants.ultraSmallPadding,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice(
      {Key? key,
      required this.titleStyle,
      required this.title,
      this.price,
      this.priceStyle})
      : super(key: key);

  final String title;
  final String? price;
  final TextStyle titleStyle;
  final TextStyle? priceStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
        Expanded(
          flex: 1,
          child: price == null
              ? const SizedBox()
              : Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "${price}0₺",
                    style: priceStyle,
                  ),
                ),
        ),
      ],
    );
  }
}
