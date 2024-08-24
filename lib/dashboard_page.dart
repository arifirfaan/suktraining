import 'package:flutter/material.dart';
import 'package:suktraining/components/bottom_nav.dart';
import 'package:suktraining/model/model_pingat.dart';
import 'package:suktraining/setting_page.dart';
import 'package:suktraining/utils/load_api.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late Future<List<ModelPingat>> _data;
  String _dataAPi = "";

  @override
  void initState() {
    super.initState();
    loadApi();
    //debugPrint(_data.toString());
  }

  Future<void> loadAPIhere() async {
    _dataAPi = await loadApi();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, int item) {
                          return Container(
                              height: 100,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              margin: EdgeInsets.all(10),
                              color: Colors.purpleAccent,
                              child: Text("Data " + item.toString()));
                        }),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        loadAPIhere();
                        //Future<List<ModelPingat>> data = loadApi();
                        //debugPrint(data.toString());
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return SettingPage();
                        // }));
                      },
                      child: Icon(Icons.settings)),
                  Text(_dataAPi)
                ],
              ),
            ),
            BottomNav()
          ],
        ));
  }
}
