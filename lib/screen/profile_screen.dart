import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sem2/screen/aa_nothindo-screen.dart';
import 'package:sem2/screen/settings_screen.dart';
import 'package:sem2/screen/widget/appbar_profile_screen.dart';
import 'package:sem2/screen/widget/profile_emongol_trail.dart';
import 'package:sem2/screen/widget/profile_emongolia_listtile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3];
    List<String> title = [
      'Төлбөрийн хэрэгсэлүүд',
      'Судалгаа бөглөх',
      'E-barimt холбох',
      'Тохиргоо'
    ];
    List<Widget> leadingInputs = [
      const Icon(Icons.ballot_outlined, color: Colors.white),
      const Icon(Icons.edit_outlined, color: Colors.white),
      Image.asset(
        'assets/images/e_barimt_white_small.png',
      ),
      const Icon(Icons.settings_outlined, color: Colors.white),
    ];
    final List<Widget> screens = [
      const NoThingDoScreen(),
      const NoThingDoScreen(),
      const NoThingDoScreen(),
      // const NoThingDoScreen(),
      const SettingsScreen(),
      const NoThingDoScreen(),
    ];

    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200.0),
            child: appbarprofile(context)),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 34, 226),
              Color.fromARGB(255, 128, 38, 211),
            ]),
          ),
          // padding: const EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  shape: BoxShape.rectangle),
              // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Column(
                    children: intList.map((e) {
                      return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              shape: BoxShape.rectangle),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 5),
                          child: Material(
                            child: ListTile(
                              // leading: const Icon(
                              //   Icons.archive_rounded,
                              //   size: 40,
                              // ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: 4),
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 132, 80, 227),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: leadingInputs[e],
                              ),
                              title: Text(
                                title[e].toString(),
                                style: const TextStyle(fontSize: 18),
                              ),

                              // trailing: const Icon(
                              //     Icons.keyboard_arrow_right_sharp,
                              //   )
                              trailing: e == 3
                                  ? const Icon(
                                      Icons.keyboard_arrow_right_sharp,
                                    )
                                  : const Icon(
                                      Icons.keyboard_arrow_right_sharp,
                                      color: Colors.black12,
                                    ),

                              // trailing: emongoliatrail(context),
                              // subtitle: const Text('This is subti'),
                              selected: true,
                              onTap: () {
                                if (e == 3) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => screens[e]));
                                }
                              },
                            ),
                          ));
                    }).toList(),
                  ),
                  const ProfileEMongoliaListTile(),
                ],
              )),
        ));
  }
}
