import 'dart:developer';

import 'package:bmi_and_snippets/theme/app.colors.dart';
import 'package:flutter/cupertino.dart';

class Height extends StatelessWidget {
  const Height({
    Key? key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.height,
    required this.onChanged,
  }) : super(key: key);

  final String text;
  final String text1;
  final String text2;
  final double height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              text1,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
            Text(
              text2,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        SizedBox(
          width: 300,
          child: CupertinoSlider(
            value: height,
            min: 0,
            max: 240,
            activeColor: AppColors.whiteColor,
            thumbColor: AppColors.pinkColor,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
