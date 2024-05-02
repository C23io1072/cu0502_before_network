import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonUmnuh extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;

  const CustomButtonUmnuh(
      {super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: ontap,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
