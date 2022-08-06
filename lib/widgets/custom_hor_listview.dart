import 'package:egegen/utils/extensions.dart';
import 'package:flutter/material.dart';
import '../models/highlights_model.dart';
import '../utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/fonts.dart';

class CustomHorListView extends StatelessWidget {
  final double width;
  final double height;
  final List<HighlightsModel> list;
  final String discount;
  final String point;

  const CustomHorListView({
    Key? key,
    required this.width,
    required this.height,
    required this.list,
    required this.discount,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultCardPadding =
        EdgeInsets.symmetric(horizontal: AppConstants.extraSmallPadding);
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: defaultCardPadding,
            child: SizedBox(
              height: height,
              width: width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Stack(
                        children: [
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  list[index].storeImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          list[index].discount
                              ? Stack(
                                  children: [
                                    SvgPicture.asset(
                                      AppConstants.discount,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      left: AppConstants.ultraSmallPadding,
                                      top: AppConstants.ultraSmallPadding,
                                      child: Text(
                                        discount,
                                        style: customFont12.copyWith(
                                            color: context
                                                .scaffoldBackgroundColor),
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox(),
                          Positioned(
                            right: AppConstants.extraSmallPadding,
                            top: AppConstants.extraSmallPadding,
                            child: Icon(
                              Icons.favorite,
                              color: context.disabledColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: defaultCardPadding,
                        child: StoreTitleAndRating(
                          storeTitle: list[index].storeTitle,
                          rating: "${list[index].rating} $point",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: defaultCardPadding,
                        child: OfferTitle(
                          campaignTitle: list[index].campaignTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class OfferTitle extends StatelessWidget {
  final String campaignTitle;

  const OfferTitle({
    Key? key,
    required this.campaignTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconAndTextSize = 10.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppConstants.iconOffer,
          height: iconAndTextSize,
          color: context.secondaryHeaderColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          campaignTitle,
          style: customFont10Bold.copyWith(
            color: context.secondaryHeaderColor,
          ),
        ),
      ],
    );
  }
}

class StoreTitleAndRating extends StatelessWidget {
  final String storeTitle;
  final String rating;

  const StoreTitleAndRating({
    Key? key,
    required this.storeTitle,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconAndTextSize = 10.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          storeTitle,
          style: customFont16Bold,
          overflow: TextOverflow.ellipsis,
        ),
        context.sizedBoxWidthSmall,
        Row(
          children: [
            Icon(
              Icons.star,
              size: iconAndTextSize,
              color: context.primaryColorLight,
            ),
            const SizedBox(width: 5),
            Text(
              rating,
              style: customFont10Bold.copyWith(
                color: context.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
