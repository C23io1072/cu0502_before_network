import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:sem2/components/process/my_listview_builder.dart';
import 'package:sem2/components/process/my_listview_builder0_teacher.dart';
import 'package:sem2/components/process/my_listview_builder1.dart';
import 'package:sem2/screen/bottom_tabbar.dart';
import 'package:sem2/screen/home_screen.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/widget/check_in_discount.dart';
import 'package:sem2/screen/widget/connect_emongolia.dart';
import 'package:sem2/screen/widget/credit_card_item.dart';
import 'package:sem2/screen/widget/discount_details_wrap.dart';
import 'package:sem2/screen/widget/point_history_data_show.dart';
import 'package:sem2/screen/widget/point_item.dart';
import 'package:sem2/screen/widget/point_item1.dart';
import 'package:sem2/components/process/profile_lists_with_cards.dart';
import 'package:sem2/screen/widget/use_point.dart';
import 'package:sem2/screen/widget/vertically_scrollable_tabs.dart';

class ProfileScreenUmnuh extends StatelessWidget {
  const ProfileScreenUmnuh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 200,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 100, 13, 222),
              Color.fromARGB(255, 93, 59, 203),
              Color.fromARGB(255, 129, 48, 242),
            ])),
          ),
          title: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 2, bottom: 10),
              // height: 130,

              //*************** */
              // Container(child: Stack(children: [],)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 3, color: Colors.white.withOpacity(0.3)),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/images/profile_photo.jpg'),
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Positioned(
                          top: 60,
                          left: 60,
                          child: GestureDetector(
                            onTap: () {
                              print('camera');
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              // padding:
                              //     const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child:
                                  // Row(
                                  //   mainAxisSize: MainAxisSize.min,
                                  //   children: [
                                  //   const Padding(
                                  // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                  const Icon(Icons.camera_alt,
                                      color: Colors.purple),
                              // ),
                              //   ],
                              // ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Otgoo',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              )),
          leadingWidth: 55,
          leading: Padding(
            // padding: const EdgeInsets.only(left: 16),
            padding: const EdgeInsets.only(left: 16, top: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 40,
                      // padding:
                      //     const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 132, 80, 227),
                        border: Border.all(
                          width: 2,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                          // Row(
                          //   mainAxisSize: MainAxisSize.min,
                          //   children: [
                          //   const Padding(
                          // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          Icon(Icons.keyboard_arrow_left_sharp,
                              color: Colors.white),
                      // ),
                      //   ],
                      // ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/cu_logo_white.png',
                        height: 30,
                        width: 45,
                      ),
                    )
                  ],
                )),
          ],
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 94, 34, 226),
            Color.fromARGB(255, 128, 38, 211),
          ])),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  shape: BoxShape.rectangle),
              // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  ListView(),
                  GestureDetector(
                    onTap: () {
                      print('Payments');
                    },
                    child: Container(
                        width: 400,
                        padding: const EdgeInsets.all(15),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 132, 80, 227),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(Icons.radar_outlined,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Төлбөрийн хэрэгсэлүүд',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            const Icon(Icons.keyboard_arrow_right_sharp,
                                color: Colors.purple, size: 35),
                          ],
                        )),
                  ),
                  const ConnectEmongolia(),
                  const ListViewBuilderTeacher(),
                ],
              )),
        ));
//jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
  }
}
