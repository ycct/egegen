import 'package:egegen/models/category_models.dart';
import 'package:egegen/utils/constants.dart';
import 'package:egegen/utils/extensions.dart';
import 'package:egegen/utils/theme_data.dart';
import 'package:flutter/material.dart';

import '../utils/fonts.dart';

class CustomCategoryListView extends StatelessWidget {
  final double height;
  final List<CategoryModel> list;

  const CustomCategoryListView({
    Key? key,
    required this.height,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height,
              width: height,
              child: Card(
                color: context.primaryColorLight.withOpacity(0.8),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(list[index].image),
                    ),
                    Positioned(
                      left: AppConstants.ultraSmallPadding,
                      bottom: AppConstants.ultraSmallPadding,
                      child: Text(
                        list[index].title,
                        style: customFont12Bold.copyWith(
                          color: CustomThemeData.whiteColor,
                        ),
                      ),
                    )
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