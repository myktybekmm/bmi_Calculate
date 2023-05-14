import 'package:flutter/material.dart';

class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  bool darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.grey,
      appBar: AppBar(
        title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  darkMode = true;
                  print(darkMode);
                });
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: darkMode ? Colors.grey : const Color(0xff212121),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: darkMode ? const Color(0xff212121) : Colors.grey,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: darkMode ? const Color(0xff424242) : Colors.white,
                      offset: const Offset(-5.0, -5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.apple,
                  size: 45,
                  color: darkMode == false ? Colors.black : Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  darkMode = false;
                  print(darkMode);
                });
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: darkMode ? Colors.grey : Colors.grey,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: darkMode ? const Color(0xff212121) : Colors.grey,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: darkMode ? const Color(0xff424242) : Colors.white,
                      offset: const Offset(-5.0, -5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.android,
                  size: 45,
                  color: darkMode == true ? Colors.black : Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
