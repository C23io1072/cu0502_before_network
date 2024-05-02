import 'package:flutter/material.dart';

class DiscountDetailsWrap extends StatelessWidget {
  const DiscountDetailsWrap({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(7, (index) => index);
    final items1 = List.generate(4, (index1) => index1);
    return Container(
        // height: 660,
        // width: 410,
        // decoration:
        //     BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
        // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 20,
            runSpacing: 20,
            children: items1.map((e) {
              final discountText = [
                'Амттай хөвсгөр...',
                'Hershey халуун...',
                'Амттай халуун...',
                'Дархлаа дэмжих..'
              ];
              final discountImg = [
                'assets/images/buuz.png',
                'assets/images/hot_chocolate.png',
                'assets/images/coffee_get.png',
                'assets/images/shar_doctor.png'
              ];
              final discountProduct = [
                'БУУЗ',
                'ХАЛУУН ШОКОЛАД',
                'ХАЛУУН КОФЕ.',
                'ХАЛУУН ААРЦ'
              ];
              return Container(
                height: 300,
                width: 180,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      // margin: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.only(top: 140),
                      height: 300,
                      width: 180,

                      // margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 100, 13, 222)
                                .withOpacity(0.5)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(discountText[e],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: items1.map((e) {
                                    return Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            width: 2,
                                            color:
                                                Colors.grey.withOpacity(0.3)),
                                      ),
                                      height: 25,
                                      width: 25,
                                      child: Icon(
                                        e != 3
                                            ? Icons.check_rounded
                                            : Icons.star_rounded,
                                        color: e != 3
                                            ? Colors.grey.withOpacity(0.8)
                                            : Colors.purple.withOpacity(0.8),
                                        size: 20,
                                      ),
                                    );
                                  }).toList()),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(
                                        Icons.calendar_month,
                                        color: Colors.purple,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      const Text('04/31 хүртэл',
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700))
                                    ]),
                                // Image.asset(
                                //   'assets/images/maxim-coffee.jpg',
                                //   width: 35,
                                //   height: 35,
                                // ),
                              ]),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          height: 150,
                          width: 180,
                          // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 18),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Colors.white.withOpacity(0.5)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            gradient: const LinearGradient(
                              begin: Alignment(2.5, 2),
                              end: Alignment.topCenter,
                              colors: <Color>[
                                Color.fromARGB(255, 100, 13, 222),
                                Color.fromARGB(255, 93, 59, 203),
                                Color.fromARGB(255, 129, 48, 242)
                              ],
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: const BoxDecoration(
                                color: const Color.fromARGB(255, 126, 190, 72),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12))),
                            child: Container(
                              margin: const EdgeInsets.only(top: 65),
                              //padding: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30)),
                                  color:
                                      const Color.fromARGB(255, 70, 78, 127)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(discountProduct[e],
                                      style: TextStyle(
                                          color: Colors.lightGreen,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                          )),
                    ),
                    Positioned(
                        top: 35,
                        left: 40,
                        child: Image.asset(
                          discountImg[e],
                          height: 77,
                          width: 100,
                        )),
                    Positioned(
                        top: 12,
                        left: 110,
                        child: Container(
                            height: 40,
                            width: 60,
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.symmetric(
                            //     horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 137, 181, 9),
                                border: Border.all(
                                    width: 2,
                                    color: const Color.fromARGB(
                                        255, 173, 196, 96)),
                                borderRadius: BorderRadius.circular(50)),
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    children: [TextSpan(text: '3+1')]))))
                  ],
                ),
              );
            }).toList()));
  }
}
