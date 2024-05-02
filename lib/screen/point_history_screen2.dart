import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sem2/screen/bottom_tabbar.dart';
import 'package:sem2/screen/home_screen.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/widget/check_in_discount.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';
import 'package:sem2/screen/widget/discount_details_wrap.dart';
import 'package:sem2/screen/widget/point_item1.dart';
import 'package:sem2/screen/widget/use_point.dart';

class PointHistoryScreen2 extends StatelessWidget {
  const PointHistoryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Container(
          //alignment: Alignment.center,
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
        leadingWidth: 65,
        leading: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomTabbarScreen()),
                );
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
                    Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white),
                // ),
                //   ],
                // ),
              ),
            )),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 120, left: 16, right: 16),
              height: 190,
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
            // Container(
            //   child:
            // DefaultTabController(
            //     length: 2,
            //     child: Column(
            //       children: [
            //         const TabBar(tabs: [
            //           Tab(text: '111'),
            //           Tab(text: '222'),
            //           Tab(text: '333')
            //         ]),
            //         Expanded(
            //             child: TabBarView(
            //           children: [
            //             Container(
            //               color: Colors.yellow,
            //             ),
            //             Container(
            //               color: Colors.blue,
            //             ),
            //             Container(
            //               color: Colors.green,
            //             )
            //           ],
            //         ))
            //       ],
            //     )),
            //)

            const CheckInDiscount(),
            const CreditCardItem(),
            const DiscountDetailsWrap()
          ],
        ),
      ),
      //jjjjjjj
    );
  }
}
