import 'package:flutter/material.dart';

class MyAlertDialog1 extends StatelessWidget {
  const MyAlertDialog1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
            content: Image(image: AssetImage('assets/images/QR.jpg'))),
      ),
      //),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 3, color: Colors.white.withOpacity(0.3)),
          shape: BoxShape.rectangle,
          image: const DecorationImage(
            fit: BoxFit.fill,
            // image: NetworkImage(
            //     'https://cdn.britannica.com/54/75854-050-E27E66C0/Eiffel-Tower-Paris.jpg'),

            image: AssetImage('assets/images/QR.jpg'),
          ),
        ),
        // height: 45,
        // width: 45,
      ),
    );
  }
}
