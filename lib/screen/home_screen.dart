import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sem2/screen/profile_screen.dart';
import 'package:sem2/screen/widget/check_in_discount.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';

import 'package:sem2/screen/widget/discount_details_wrap.dart';

import 'package:sem2/screen/widget/flag_list1.dart';
import 'package:sem2/screen/widget/my_alert_dialog1.dart';
import 'package:sem2/screen/widget/point_item.dart';

import 'package:sem2/screen/widget/use_point.dart';
import 'package:sem2/screen/widget/use_point_copy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 100, 13, 222),
              Color.fromARGB(255, 93, 59, 203),
              Color.fromARGB(255, 129, 48, 242),
            ])),
          ),
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Сайн байна уу?",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                const Text(
                  "CU-д тавтай морил!!",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 3, color: Colors.white.withOpacity(0.3)),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        // image: NetworkImage(
                        //     'https://cdn.britannica.com/54/75854-050-E27E66C0/Eiffel-Tower-Paris.jpg'),

                        image: AssetImage('assets/images/profile_photo.jpg'),
                      ),
                    ),
                    height: 45,
                    width: 45,
                  ),
                )),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 120, left: 16, right: 16),
                height: 250,
                width: double.infinity,
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
                        child: const MyAlertDialog1()),
                  ],
                ),
              ),
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
        ));
  }
}
