import 'package:flutter/material.dart';
import 'package:suktraining/dashboard_page.dart';
import 'package:suktraining/setting_page.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
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
