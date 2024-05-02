import 'package:flutter/material.dart';
import 'package:sem2/components/basic/appbar_component.dart';
import 'package:sem2/components/basic/btn_elevated.dart';
import 'package:sem2/components/basic/btn_filled.dart';
import 'package:sem2/components/basic/btn_outlined.dart';

class MyComponentScreen extends StatelessWidget {
  const MyComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: MyAppBarComponent(
            title: 'App Bar Component',
            autoLeading: 1,
          ),
        ),
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              BtnFilled(
                  title: 'Харах',
                  ontap: () {
                    print('Watch');
                  }),
              const SizedBox(height: 20),
              BtnOutlined(
                  title: 'Хаах',
                  ontap: () {
                    print('Close');
                  }),
            ],
          ),
        ));
  }
}
