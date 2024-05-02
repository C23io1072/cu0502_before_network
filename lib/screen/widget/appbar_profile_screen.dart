import 'package:flutter/material.dart';

Widget appbarprofile(BuildContext context) {
  return AppBar(
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
                      image: AssetImage('assets/images/profile_photo.jpg'),
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
                        print('camera!!');
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
                            const Icon(Icons.camera_alt, color: Colors.purple),
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
                    Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white),
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
  );
}
