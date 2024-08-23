import 'package:flutter/material.dart';
import 'package:suktraining/dashboard_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  /// function to show popup dialog

  void _showPopup() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Register"),
            content: Text("You need to register first before continue."),
            actions: [
              TextButton(onPressed: () {}, child: Text("Yes")),
              TextButton(onPressed: () {}, child: Text("No"))
            ],
          );
        });
  }

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
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DashboardPage();
                }));
              }, //_showPopup,
              child: Text("Continue"),
            )
          ],
        ),
      ), //Widget Body User Interface
    );
  }
}
