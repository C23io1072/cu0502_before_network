import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sem2/screen/bottom_tabbar.dart';
import 'package:sem2/screen/home_screen.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/widget/check_in_discount.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';
import 'package:sem2/screen/widget/discount_details_wrap.dart';
import 'package:sem2/screen/widget/point_history_data_show.dart';
import 'package:sem2/screen/widget/point_history_listtile.dart';
import 'package:sem2/screen/widget/point_item.dart';
import 'package:sem2/screen/widget/point_item1.dart';
import 'package:sem2/screen/widget/use_point.dart';
import 'package:sem2/screen/widget/vertically_scrollable_tabs.dart';

class PointHistoryScreen extends StatelessWidget {
  const PointHistoryScreen({super.key});
  // TabBar get _tabBar => TabBar(
  //       indicatorColor: Color.fromARGB(255, 125, 39, 212),
  //       indicatorSize: TabBarIndicatorSize.tab,
  //       labelStyle: TextStyle(fontSize: 18),
  //       // isScrollable: true,
  //       tabs: [
  //         Tab(child: Text('Бүгд')),
  //         Tab(child: Text('Нэмэгдсэн')),
  //         Tab(child: Text('Зарцуулсан')),
  //       ],
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: Container(
            // alignment: Alignment.center,
            // padding: const EdgeInsets.only(bottom: 15),
            // margin: const EdgeInsets.only(bottom: 16),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 34, 226),
              Color.fromARGB(255, 128, 38, 211),
            ])),
          ),
          title: const Text(
            'Онооны түүх',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leadingWidth: 55,
          leading: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 10, top: 10),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const BottomTabbarScreen()),
                  // );
                  Navigator.pop(context);
                },
                child: Container(
                  // height: 30,
                  // padding:
                  //     const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 132, 80, 227),
                    border: Border.all(
                      width: 2,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      // Row(
                      //   mainAxisSize: MainAxisSize.min,
                      //   children: [
                      //   const Padding(
                      // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      Icon(Icons.keyboard_arrow_left_sharp,
                          color: Colors.white),
                  // ),
                  //   ],
                  // ),
                ),
              )),
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
              body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    // title: const Text('Tabs Demo'),

                    flexibleSpace: Container(
                      padding:
                          const EdgeInsets.only(top: 5, left: 16, right: 16),
                      height: 220,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(2.6, 2),
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color.fromARGB(255, 94, 34, 226),
                            Color.fromARGB(255, 128, 38, 211),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PointItem1(),
                          // SizedBox(height: 10),
                          UsePointItem(),
                        ],
                      ),
                    ),
                    pinned: true,
                    floating: true,
                    automaticallyImplyLeading: false,
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(55.0),
                        child: Container(
                            color: Colors.white,
                            width: double.maxFinite,
                            alignment: Alignment.center,
                            child: const TabBar(
                                indicatorColor:
                                    Color.fromARGB(255, 125, 39, 212),
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelStyle: TextStyle(fontSize: 17),
                                // isScrollable: true,
                                tabs: [
                                  Tab(child: Text('Бүгд')),
                                  Tab(child: Text('Нэмэгдсэн')),
                                  Tab(child: Text('Зарцуулсан')),
                                ])))),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Container(
                    color: Colors.grey[50],
                    child: const PointHistoryListTile()),
                // Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350)
              ],
            ),
          )),
        ));
//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
  }
}
