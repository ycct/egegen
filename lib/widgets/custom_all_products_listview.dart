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

  const CustomAllProductListView({
    Key? key,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.discountedPrice,
    required this.storeName,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppConstants.defaultPadding),
      child: SizedBox(
        height: 160,
        width: double.infinity,
        child: Card(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        productName,
                        style: customFont14SemiBold,
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.redAccent,
              )),
              Expanded(
                child: Container(
                  color: context.primaryColorDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
