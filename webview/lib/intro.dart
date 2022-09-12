import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webview/screens/webview.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Lottie.network(
                  'https://assets3.lottiefiles.com/packages/lf20_5hyqudpp.json',
                  width: 330,
                  height: 300,
                  // fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebViewPage()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 129, 16, 8),
                      border: Border.all(
                        color: Color.fromARGB(255, 129, 16, 8),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
