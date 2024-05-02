import 'package:flutter/material.dart';

class ConnectEmongolia extends StatelessWidget {
  const ConnectEmongolia({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Payments');
      },
      child: Container(
          width: 400,
          padding: const EdgeInsets.all(15),
          // margin: EdgeInsets.only(top: 30),
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
                      color: const Color.fromARGB(255, 132, 80, 227),
                      border: Border.all(
                        width: 2,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                        const Icon(Icons.radar_outlined, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'E-Mongolia холбох',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                ],
              ),
              const Icon(Icons.keyboard_arrow_right_sharp,
                  color: Colors.purple, size: 35),
            ],
          )),
    );
  }
}
