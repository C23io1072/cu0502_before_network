import 'package:flutter/material.dart';
import 'package:sem2/components/process/listview_builder_card.dart';
import 'package:sem2/components/process/my_alert_dialog0.dart';
import 'package:sem2/components/process/my_listview_builder0_teacher.dart';

import 'package:sem2/screen/widget/my_alert_dialog1.dart';
import 'package:sem2/screen/widget/vertically_scrollable_tabs.dart';

class PromotionScreen0 extends StatelessWidget {
  const PromotionScreen0({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'otgoo AppBar';
    const backgroundColor = Colors.green;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0), child: Column()),
        body: const ListViewBuilderTeacher());
  }
}
