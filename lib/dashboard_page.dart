import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: 300,
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
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios))
            ],
          ),
        ));
  }
}
