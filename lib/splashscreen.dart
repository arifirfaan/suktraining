import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Irfan.com",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Continue"),
            )
          ],
        ),
      ), //Widget Body User Interface
    );
  }
}
