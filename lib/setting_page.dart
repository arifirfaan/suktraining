import 'package:flutter/material.dart';
import 'package:suktraining/components/bottom_nav.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final List<String> _buttonList = <String>[
    "Saved Messages",
    "Recent Calls",
    "Devices",
    "Notifications",
    "Appearance",
    "Language",
    "Privacy & Security",
    "Storage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 44,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(
                      Icons.person_pin,
                      size: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        "Arif Irfaan",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text("arirfirfaan@gmail.com")
                  ],
                ),
                SizedBox(
                  height: 400,
                  width: 300,
                  child: ListView.builder(
                      itemCount: _buttonList.length,
                      itemBuilder: (context, int item) {
                        return InkWell(
                          onTap: () {
                            debugPrint("JAdi");
                          },
                          child: Container(
                            //color: Colors.blueAccent,
                            height: 52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(_buttonList[item]),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          BottomNav()
        ],
      ),
    );
  }
}
