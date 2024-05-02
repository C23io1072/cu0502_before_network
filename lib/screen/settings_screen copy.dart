import 'package:flutter/material.dart';
import 'package:sem2/screen/aa_nothindo-screen.dart';
import 'package:sem2/screen/change_phone_screen.dart';
import 'package:sem2/screen/widget/appbar_settings_screen.dart';

class SettingsScreenUmnuh extends StatefulWidget {
  const SettingsScreenUmnuh({super.key});

  @override
  State<SettingsScreenUmnuh> createState() => _SettingsScreenUmnuhState();
}

class _SettingsScreenUmnuhState extends State<SettingsScreenUmnuh> {
  // String? changedPhoneNr;

  // @override
  // void initState() async {
  //   super.initState();
  //   final value = await Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => const ChangePhoneScreen()));
  //   setState(() {
  //     changedPhoneNr = value as String?;
  //     // print('hhhhhhhhhhh');
  //     // print(changedPhoneNr);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final items = List.generate(4, (index) => index);
    List<int> intList = [0, 1, 2, 3];
    List<String> title = ['Овог', 'Нэр', 'Утасны дугаар', 'И-мэйл'];
    final inputs = ['Нацаг', 'Отгоо', '90824305', 'c23io1072@ufe.edu.mn'];

    List<Widget> leadingInputs = [
      const Icon(
        Icons.person_outlined,
        color: Colors.purple,
        size: 32,
      ),
      const Icon(
        Icons.person_outlined,
        color: Colors.purple,
        size: 32,
      ),
      const Icon(
        Icons.phone_outlined,
        color: Colors.purple,
        size: 32,
      ),
      // Image.asset(
      //   'assets/images/e_barimt_white_small.png',
      // ),
      const Icon(
        Icons.settings_outlined,
        color: Colors.purple,
        size: 32,
      ),
    ];
    final List<Widget> screens = [
      const NoThingDoScreen(),
      const NoThingDoScreen(),
      const ChangePhoneScreen(),
      const NoThingDoScreen(),
    ];

    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70.0),
            child: appbarsetting(context, 'Тохиргоо')),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                shape: BoxShape.rectangle),
            // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            visualDensity:
                                const VisualDensity(horizontal: 0, vertical: 2),
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                // color:
                                //     const Color.fromARGB(255, 132, 80, 227),
                                color: Colors.grey[300],
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
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.grey),
                            ),
                            subtitle: Text(inputs[e],
                                style: const TextStyle(
                                  fontSize: 18,
                                )),
                            trailing: e == 2
                                ? const Icon(
                                    Icons.edit_outlined,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.edit_outlined,
                                    size: 30,
                                    color: Colors.black12,
                                  ),
                            // trailing: emongoliatrail(context),
                            // subtitle: const Text('This is subti'),
                            selected: true,
                            onTap: () {
                              if (e == 2) {
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
                // const ProfileEMongoliaListTile(),
                //exit SettingScreen session **************************
                // const SizedBox(height: 100),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: ListTile(
                    // leading: const Icon(
                    //   Icons.archive_rounded,
                    //   size: 40,
                    // ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: 4),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // color:
                        //     const Color.fromARGB(255, 132, 80, 227),
                        color: Colors.red,
                        border: Border.all(
                          width: 2,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    title: const Text(
                      'Системээс гарах',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),

                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 30,
                      color: Colors.red,
                    ),
                    // trailing: emongoliatrail(context),
                    // subtitle: const Text('This is subti'),
                    selected: true,
                    onTap: () {
                      print('object');
                    },
                  ),
                ),
              ],
            )));
  }
}
