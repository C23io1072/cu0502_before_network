import 'package:flutter/material.dart';

class TabBarScreenTemplate extends StatelessWidget {
  const TabBarScreenTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Template!'),
        ),
        body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(tabs: [Tab(text: '111'), Tab(text: '222')]),
                Expanded(
                  child: TabBarView(children: [
                    Container(color: Colors.yellow),
                    Container(color: Colors.blue),
                  ]),
                ),
              ],
            )));
  }
}
