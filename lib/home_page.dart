import 'package:bmi_and_snippets/components/calculate_button.dart';
import 'package:bmi_and_snippets/components/height.dart';
import 'package:bmi_and_snippets/components/male_female.dart';
import 'package:bmi_and_snippets/components/status_card.dart';
import 'package:bmi_and_snippets/components/weight_age.dart';
import 'package:bmi_and_snippets/result_page.dart';
import 'package:bmi_and_snippets/theme/app_text.dart';
import 'package:flutter/material.dart';

import 'theme/app.colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int age = 16;
  int weight = 60;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Center(child: Text(AppText.bmi)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, top: 30, right: 18),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: MaleFeMale(
                      icon: Icons.male,
                      text: AppText.male.toString(),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  StatusCard(
                    child: MaleFeMale(
                      icon: Icons.female,
                      text: AppText.female.toString(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            StatusCard(
              child: Height(
                text: AppText.height.toString(),
                text1: '${height.toInt()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(
                    () {
                      height = value;
                    },
                  );
                },
                height: height,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppText.weight,
                      san: weight,
                      addBasuu: () {
                        if (weight <= 160 && weight > 6) {
                          weight++;
                          setState(() {});
                        }
                      },
                      removeBasuu: () {
                        if (weight <= 160 && weight > 6) {
                          weight--;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  StatusCard(
                    child: WeightAge(
                      text: AppText.age,
                      san: age,
                      addBasuu: () {
                        if (age <= 120 && age > 6) {
                          age++;
                        }
                        setState(() {});
                      },
                      removeBasuu: () {
                        if (age <= 120 && age > 6) {
                          age--;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final hSquare = height / 100;
          final result = weight / (hSquare * hSquare);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(bmi: result),
            ),
          );
        },
      ),
    );
  }
}
