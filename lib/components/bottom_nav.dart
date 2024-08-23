import 'package:flutter/material.dart';
import 'package:suktraining/dashboard_page.dart';
import 'package:suktraining/setting_page.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: Colors.amber,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DashboardPage();
                    }));
                  },
                  icon: Icon(Icons.home)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DashboardPage();
                    }));
                  },
                  icon: Icon(Icons.shield)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SettingPage();
                    }));
                  },
                  icon: Icon(Icons.settings))
            ],
          ),
        ));
  }
}
