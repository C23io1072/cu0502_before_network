import 'package:flutter/material.dart';

class PointHistoryDataShow extends StatelessWidget {
  const PointHistoryDataShow({super.key});

  @override
  Widget build(BuildContext context) {
    //final items = List.generate(5, (index) => index);
    final pointData = [
      {"date": "2024/03/21", "time": "19:41", "number": "70"},
      {"date": "2024/02/26", "time": "15:56", "number": "124"},
      {"date": "2024/02/16", "time": "12:32", "number": "99"},
      {"date": "2024/02/15", "time": "10:20", "number": "12"},
      {"date": "2024/01/23", "time": "15:40", "number": "59"}
    ];

    return ListView(
      children: pointData.map((e) {
        var pointDate = e['date'].toString();
        var pointTime = e['time'].toString();
        var pointNr = e['number'].toString();
        return Container(
          // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          color: Colors.grey.withOpacity(0.1),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pointDate,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 10),
              Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(children: [
                                Text(pointTime,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(width: 20),
                                const Text('E-barimt',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ]),
                            ],
                          ),
                          Row(
                            children: [
                              Text(pointNr,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green.withOpacity(0.5),
                                      fontWeight: FontWeight.w900)),
                              const SizedBox(width: 7),
                              Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  width: 20,
                                  height: 20,
                                  child: const Image(
                                      image: AssetImage(
                                          'assets/images/circle_gradient2.png'))),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text('Худалдан авалтын бонус',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w600))
                    ],
                  ))
            ],
          ),
        );
      }).toList(),
    );
  }
}
