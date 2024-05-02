import 'package:flutter/material.dart';

class VerticallyScrollableTabsOrigCode extends StatelessWidget {
  const VerticallyScrollableTabsOrigCode({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: Text('Tabs Demo'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(child: Text('Flight')),
                  Tab(child: Text('Train')),
                  Tab(child: Text('Car')),
                  Tab(child: Text('Cycle')),
                  Tab(child: Text('Boat')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),
          ],
        ),
      )),
    );
  }
}
