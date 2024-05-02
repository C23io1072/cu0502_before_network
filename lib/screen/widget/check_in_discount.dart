import 'package:flutter/material.dart';

class CheckInDiscount extends StatelessWidget {
  const CheckInDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(7, (index) => index);
    return Container(
        height: 220,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: items.map((e) {
              return Container(
                height: 210,
                width: 375,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
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
                        const Text('Check-in урамшуулал',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                        Container(
                            height: 40,
                            width: 100,
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.symmetric(
                            //     horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 186, 191, 204),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.grey.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(50)),
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    children: [
                                  TextSpan(text: (e + 1).toString()),
                                  TextSpan(text: '-р шат')
                                ])))
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
                      const Text('GET Латте(сонголтоо..',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 100, 13, 222),
                              fontSize: 20,
                              fontWeight: FontWeight.w700))
                    ]),
                    Spacer(),
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
                                  width: 10,
                                ),
                                const Text('2024/03/31 хүртэл',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700))
                              ]),
                          Image.asset(
                            'assets/images/maxim-coffee.jpg',
                            width: 35,
                            height: 35,
                          ),
                        ]),
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
                            children: items.map((e) {
                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      width: 3,
                                      color: Colors.grey.withOpacity(0.3)),
                                ),
                                height: 25,
                                width: 35,
                                child: Text(
                                  '10k',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              );
                            }).toList()),
                      ],
                    ),
                    // SizedBox(
                    //   height: 3,
                    // ),
                  ],
                ),
              );
            }).toList()));
  }
}
