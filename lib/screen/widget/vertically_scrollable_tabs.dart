import 'package:flutter/material.dart';

class VerticallyScrollableTabs extends StatelessWidget {
  const VerticallyScrollableTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text('Tabs Demo'),
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              bottom: TabBar(
                indicatorColor: Color.fromARGB(255, 125, 39, 212),
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(fontSize: 18),
                // isScrollable: true,
                tabs: [
                  Tab(child: Text('Бүгд')),
                  Tab(child: Text('Нэмэгдсэн')),
                  Tab(child: Text('Зарцуулсан')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350)
          ],
        ),
      )),
    );
  }
}
