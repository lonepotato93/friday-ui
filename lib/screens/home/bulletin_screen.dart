import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/bulletin/menu_top_bar.dart';
import '../../widgets/input_design.dart';

class BulletinScreen extends StatelessWidget {
  const BulletinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // const MenuTopBar(),
            InputDesign(),
          ],
        ),
      ),
    );
  }
}
