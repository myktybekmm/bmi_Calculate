import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  const ResultPage({super.key, required this.bmi});

  /*
   Сильная худоба < 16
    Умеренная худоба 16–17
    Легкая худоба 17–18,5
    Нормальный 18,5–25
    Избыточный вес 25 - 30
    Ожирение I степени 30 - 35
    Ожирение II степени 35 - 40
    Ожирение III степени > 40
   */

  Widget checkBMI(double number) {
    if (number < 16) {
      return const Text(
        "Сильная худоба",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (number >= 16 && number < 17) {
      return const Text(
        "Умеренная худоба",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (number >= 17 && number <= 18.5) {
      return const Text(
        "Легкая худоба",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (number > 18.5 && number <= 25) {
      return const Text(
        "Нормалдуу",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (number > 25 && number <= 30) {
      return const Text(
        "Избыточный вес",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      return const Text(
        "Ожериние",
        style: TextStyle(
          color: Colors.green,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211834),
      appBar: AppBar(
        title: const Text('Ден соолук индекси ( BMI )'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Жыйынтык',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                color: Color(0xff0A001F),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Сиздин дене салмагыңыз',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    checkBMI(bmi),
                    const Text(
                      'Азаматсыз!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
