import 'package:bmi_and_snippets/theme/app.colors.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.icon,
    required this.basuu,
  });
  final IconData icon;
  final void Function() basuu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: GestureDetector(
        onTap: basuu,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
