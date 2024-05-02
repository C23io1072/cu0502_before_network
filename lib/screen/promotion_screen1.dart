import 'package:flutter/material.dart';
import 'package:sem2/components/basic/appbar_component.dart';
import 'package:sem2/components/basic/btn_elevated.dart';
import 'package:sem2/components/basic/btn_filled.dart';
import 'package:sem2/components/basic/btn_outlined.dart';
import 'package:sem2/components/basic/component_screen.dart';
import 'package:sem2/screen/point_history_screen.dart';
import 'package:sem2/screen/widget/appbar_profile_screen.dart';
import 'package:sem2/screen/widget/appbar_settings_screen.dart';
import 'package:sem2/screen/widget/point_history_listtile.dart';
import 'package:sem2/screen/widget/profile_emongol_trail.dart';
import 'package:sem2/screen/widget/profile_emongolia_listtile.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('shift to appbarcomponent'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyComponentScreen()),
                      );
                    },
                    icon: const Icon(Icons.arrow_circle_right_outlined)),
              ],
            )
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              BtnFilled(
                  title: 'Харах',
                  ontap: () {
                    print('object');
                  }),
              const SizedBox(height: 20),
              BtnOutlined(
                  title: 'Хаах',
                  ontap: () {
                    print('object');
                  }),
              const SizedBox(height: 20),
              CustomButtonUmnuh(title: 'Network request', ontap: () {})
            ],
          ),
        ));
  }
}
