import 'package:bmi_and_snippets/components/circular_Button.dart';
import 'package:bmi_and_snippets/theme/app.colors.dart';
import 'package:bmi_and_snippets/theme/app_tex_style.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addBasuu,
    required this.removeBasuu,
  });

  final String text;
  final int san;
  final void Function() addBasuu;
  final void Function() removeBasuu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
        Text(
          san.toString(),
          style: AppTextStyles.sanTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removeBasuu,
            ),
            const SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
              basuu: addBasuu,
            ),
          ],
        ),
      ],
    );
  }
}
