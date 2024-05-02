import 'package:flutter/material.dart';

class FlagList1 extends StatelessWidget {
  const FlagList1({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(7, (index) => index);
    return Container(
        height: 90,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20),
        // alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 100, 13, 222)
                        .withOpacity(0.7),
                  ),
                ),
                height: 80,
                width: 95,
                margin: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.window_outlined,
                      color: Colors.purple.withOpacity(0.7),
                      size: 30,
                    ),
                    Text(
                      'Бүгд',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
            Container(
              height: 90,
              width: 280,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 4),
              //margin: EdgeInsets.only(right: 2),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: items.map((e) {
                    return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 3, color: Colors.grey.withOpacity(0.3)),
                        ),
                        height: 70,
                        width: 85,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.flag_outlined,
                              color: Colors.grey.withOpacity(0.7),
                              size: 25,
                            ),
                            Text(
                              '3+1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 18),
                            ),
                          ],
                        ));
                  }).toList()),
            )
          ],
        ));
  }
}
