import 'package:flutter/material.dart';
import 'package:sem2/screen/widget/check_in_discount.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';
import 'package:sem2/screen/widget/discount_details_wrap.dart';
import 'package:sem2/screen/widget/flag_list1.dart';
import 'package:sem2/screen/widget/point_item.dart';
import 'package:sem2/screen/widget/use_point.dart';

class MyNestedScrollView extends StatelessWidget {
  const MyNestedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: NestedScrollView(
          // The headerSliverBuilder callback defines the sliver widgets in the header
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              // SliverAppBar is the header that remains visible while scrolling

              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: Container(
                  padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                  height: 200,
                  width: double.infinity,
                  // height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(2.6, 2),
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color.fromARGB(255, 100, 13, 222),
                        Color.fromARGB(255, 93, 59, 203),
                        Color.fromARGB(255, 129, 48, 242),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PointItem(),
                          SizedBox(height: 10),
                          UsePointItem(),
                          // UsePointItemCopy()
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 100,
                        width: 100,
                      )
                    ],
                  ),
                ),
              ),
            ];
          },
          // The body contains the scrollable content
          body: SingleChildScrollView(
            child: Column(
              children: [
                const CreditCardItem(),
                const CheckInDiscount(),
                const FlagList1(),
                // const DiscountDetailsGrid(),
                const DiscountDetailsWrap(),
                Image.asset(
                  'assets/images/test.png',
                  width: 200,
                  height: 200,
                )
              ],
            ),
          )),
    );
    ;
  }
}
