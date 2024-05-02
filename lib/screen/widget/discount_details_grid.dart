import 'package:flutter/material.dart';

class DiscountDetailsGrid extends StatelessWidget {
  const DiscountDetailsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(7, (index) => index);
    final items1 = List.generate(4, (index1) => index1);
    return Container(
        height: 660,
        width: 410,
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
        // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 5,
            childAspectRatio: 0.65,
            children: items.map((e) {
              return Container(
                // height: 460,
                // width: 210,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 126, 190, 72),
                  border: Border.all(
                      width: 2,
                      color:
                          Color.fromARGB(255, 100, 13, 222).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Check',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                        Container(
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
                                    children: [TextSpan(text: '3+1')])))
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      //Image.asset('assets/images/wrapped-gift.png'),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 3, color: Colors.white.withOpacity(0.3)),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/wrapped-gift1.png'),
                            ),
                          ),
                          height: 30,
                          width: 30,
                        ),
                      ),
                      const Text('GET ',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 100, 13, 222),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))
                    ]),
                    Spacer(),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: 300,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: items1.map((e) {
                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.grey.withOpacity(0.3)),
                                ),
                                height: 25,
                                width: 25,
                                child: Icon(
                                  Icons.check_rounded,
                                  color: Colors.grey.withOpacity(0.8),
                                  size: 20,
                                ),
                              );
                            }).toList()),
                      ],
                    ),
                    SizedBox(
                      height: 15,
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
              );
            }).toList()));
  }
}
