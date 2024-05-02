import 'dart:math';

import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:sem2/components/basic/btn_filled.dart';
import 'package:sem2/components/basic/btn_outlined.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  // final txtPart1 = '';
  // final txtPart2 = '';
  @override
  Widget build(BuildContext context) {
    //final items = List.generate(5, (index) => index);
    // {
    //   "title": "",
    //   "date": "2024/03/21, 19:41",
    //   "notification":
    //       "Таны И-баримтын 121600002 эрх дээр 6,831₮-ний үнийн дүнтэй НӨАТ-ийн баримт автоматаар бүртгэгдлээ.",
    // },
    final notifications = [
      {
        'title': 'CU Mongolia',
        'date': '2024/03/21, 19:41',
        'txt':
            'Таны И-баримтын 121600002 эрх дээр 6,831₮-ний үнийн дүнтэй НӨАТ-ийн баримт автоматаар бүртгэгдлээ.',
      },
      {
        'title': 'Монгол цэргийн өдөр',
        'date': '2024/03/18, 11:11',
        'txt':
            'Монгол цэргийн өдөр, орчин цагийн Зэвсэгт хүчин үүсэн байгуулагдсаны 101 жил"-ийн баярын мэндийг дэвшүүлж, эрүүл энх, аз жаргал, сайн сайхан бүхнийг хүсэн ерөөе!',
      },
      {
        'title': 'Хүндэт эмэгтэйчүүддээ',
        'date': '2024/03/08, 09:00',
        'txt': 'Олон улсын эмэгтэйчүүдийн эрхийг хамгаалах өдрийн мэнд дэвшүүл',
      },
      {
        'title': 'Та үзэсгэлэнтэй',
        'date': '2024/03/07, 16:24',
        'txt': 'Та өөрийнхөөрөө байхдаа хамгийн үзэсгэлэнтэй шүү!',
      },
      {
        'title': 'Өөрийгөө хайрлая',
        'date': '2024/03/07, 16:24',
        'txt':
            'Эрүүл мэнд эрхэм баян. Та өдөр тутамдаа дасгал хөдөлгөөн хийж, эрүүл хоол идэж, эрүүл мэнддээ анхаараарай!',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Мэдэгдлүүд',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: notifications.map((e) {
          var title = e['title'].toString();
          var date = e['date'].toString();
          var txtOrig = e['txt'].toString();
          var txt = e['txt'].toString();

          return Container(
            // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            color: Colors.grey.withOpacity(0.1),

            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      color: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade200,
                          ),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: ListTile(
                        leading: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              DecoratedIcon(
                                icon: Icon(Icons.notifications,
                                    size: 27,
                                    color: Color.fromARGB(255, 221, 202, 247)),
                                decoration: IconDecoration(
                                    border: IconBorder(
                                        width: 5,
                                        color:
                                            Color.fromARGB(255, 129, 48, 242))),
                              )
                            ]),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: 4),

                        title: Text(title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            )),
                        // trailing: const Icon(Icons.done),

                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(date,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                )),
                            Container(
                              // color: Colors.blue,
                              child: Text(
                                  // softWrap: true,
                                  maxLines: 2,
                                  txt.length > 62
                                      ? txt = txt.substring(0, 61) + '...'
                                      : txt,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54,
                                  )),
                            )

                            //  'Таны И-баримтын 121600002 эрх дээр 6,831₮-ний үнийн дүнтэй НӨАТ-ийн баримт автоматаар бүртгэгдлээ.'
                          ],
                        ),
                        selected: true,
                        onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Colors.white,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/notification.png', // Replace with your image path
                                  width: 150, // Adjust image width as needed
                                ),
                                const SizedBox(
                                    height: 16), // Adjust spacing as needed
                                Text(title,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    )),
                                const SizedBox(
                                    height: 16), // Adjust spacing as needed
                                Text(
                                  txtOrig,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      BtnOutlined(
                                          title: 'Хаах',
                                          ontap: () {
                                            Navigator.pop(context, 'Cancel');
                                          }),
                                      BtnFilled(
                                          title: 'Харах',
                                          ontap: () {
                                            Navigator.pop(context, 'Ok');
                                          }),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
