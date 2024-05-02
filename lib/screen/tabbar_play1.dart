import 'package:flutter/material.dart';

class TabBarPlay1 extends StatelessWidget {
  const TabBarPlay1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Play!'),
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
                            Container(color: Colors.yellow),
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
