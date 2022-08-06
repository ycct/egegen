import 'package:egegen/utils/extensions.dart';
import 'package:flutter/material.dart';
import '../utils/fonts.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: customFont16Bold.copyWith(
        color: context.primaryColor,
      ),
    );
  }
}
