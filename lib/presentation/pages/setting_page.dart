import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Setting Page',
        style: kHeading5.copyWith(color: backgroundColorBlack),
      )),
    );
  }
}
