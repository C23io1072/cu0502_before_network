import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sem2/screen/widget/point_history_listtile_trail.dart';
import 'package:sem2/screen/widget/profile_emongol_trail.dart';

class PointHistoryListTile extends StatelessWidget {
  const PointHistoryListTile({super.key});

  @override
  Widget build(BuildContext context) {
    //final items = List.generate(5, (index) => index);
    final pointData = [
      {"date": "2024/04/12", "time": "18:43", "number": "70"},
      {"date": "2024/04/06", "time": "14:06", "number": "24"},
      {"date": "2024/03/30", "time": "13:22", "number": "99"},
      {"date": "2024/03/22", "time": "10:20", "number": "12"},
      {"date": "2024/03/17", "time": "05:14", "number": "75"},
      {"date": "2024/02/25", "time": "18:58", "number": "79"},
      {"date": "2024/02/14", "time": "09:13", "number": "38"},
      {"date": "2024/01/30", "time": "16:45", "number": "86"},
      {"date": "2024/01/10", "time": "11:20", "number": "21"},
      {"date": "2024/01/04", "time": "20:05", "number": "13"}
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                pointDate,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    child: ListTile(
                      // leading: const Text('07:41'),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: 4),

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(children: [
                                Text(pointTime,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        height: 2.5)),
                                const SizedBox(width: 20),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[50],
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.grey.shade200),
                                      borderRadius: BorderRadius.circular(100)),
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/e_barimt_color.png',
                                        width: 20,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 3),
                                      const Text('E-barimt',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                )
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
                      // trailing: const Icon(Icons.done),

                      subtitle: const Text('Худалдан авалтын бонус',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              height: 2)),
                      selected: true,
                      onTap: () {
                        print('text');
                      },
                    ),
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }
}
