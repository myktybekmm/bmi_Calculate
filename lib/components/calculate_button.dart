import 'package:bmi_and_snippets/theme/app.colors.dart';
import 'package:bmi_and_snippets/theme/app_tex_style.dart';
import 'package:bmi_and_snippets/theme/app_text.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onTap;
  const CalculateButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 73,
        width: double.infinity,
        color: AppColors.pinkColor,
        child: const Center(
          child: Text(
            AppText.calculator,
            style: AppTextStyles.calculateStyle,
          ),
        ),
      ),
    );
  }
}
