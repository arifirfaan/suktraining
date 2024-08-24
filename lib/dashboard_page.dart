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
  late Future<List<ModelPingat>> _futureRecipients;
  String _dataAPi = "";

  @override
  void initState() {
    super.initState();
    loadApi();
    _futureRecipients = fetchRecipients("801110085528");
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
                      },
                      child: Icon(Icons.settings)),
                  Text(_dataAPi),
                  Container(
                    height: 300,
                    child: FutureBuilder<List<ModelPingat>>(
                      future: _futureRecipients,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else if (snapshot.hasData) {
                          List<ModelPingat> recipients = snapshot.data!;
                          return ListView.builder(
                            itemCount: recipients.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(recipients[index].nama),
                                subtitle: Text(recipients[index].jawatan),
                              );
                            },
                          );
                        } else {
                          return Center(child: Text('No recipients found'));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            BottomNav()
          ],
        ));
  }
}
