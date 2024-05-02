import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';

class TabBarPlay2 extends StatelessWidget {
  const TabBarPlay2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Play 2!'),
        ),
        body: Expanded(
          child: Column(
            children: [
              Container(height: 60, color: Colors.black),
              Expanded(
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        const TabBar(
                            tabs: [Tab(text: '111'), Tab(text: '222')]),
                        Expanded(
                          child: TabBarView(children: [
                            Container(
                              color: Colors.yellow,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const CreditCardItem(),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    const CreditCardItem(),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    const CreditCardItem()
                                  ],
                                ),
                              ),
                            ),
                            Container(color: Colors.blue),
                          ]),
                        ),
                      ],
                    )),
              ),
              // const CreditCardItem(),
              // const CheckInDiscount(),
              // const FlagList1(),
              // // const DiscountDetailsGrid(),
              // const DiscountDetailsWrap(),
              // Image.asset(
              //   'assets/images/test.png',
              //   width: 200,
              //   height: 200,
              // )
            ],
          ),
        ));
  }
}
