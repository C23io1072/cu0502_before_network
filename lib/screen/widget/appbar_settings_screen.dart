import 'package:flutter/material.dart';

Widget appbarsetting(BuildContext context, String titleAppBar) {
  return AppBar(
    toolbarHeight: 200,
    title: Text(
      titleAppBar,
      style: const TextStyle(fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
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
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 132, 80, 227),
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.black26,
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
                        color: Colors.black26),
                // ),
                //   ],
                // ),
              ),
            ),
          )
        ],
      ),
    ),
    elevation: 0,
  );
}
