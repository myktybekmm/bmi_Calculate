import 'package:bmi_and_snippets/theme/app_tex_style.dart';
import 'package:flutter/material.dart';

class MaleFeMale extends StatelessWidget {
  const MaleFeMale({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
      ],
    );
  }
}
