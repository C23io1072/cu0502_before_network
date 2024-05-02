import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sem2/components/basic/color_component.dart';

class BtnOutlined extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;

  const BtnOutlined({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              side: BorderSide(width: 2, color: Colors.red)),
          fixedSize: const Size(120, 60)),
      onPressed: ontap,
      child: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
