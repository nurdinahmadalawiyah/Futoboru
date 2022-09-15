import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/presentation/pages/home_page.dart';
import 'package:futoboru/presentation/pages/match_page.dart';
import 'package:futoboru/presentation/pages/setting_page.dart';
import 'package:futoboru/presentation/pages/standing_page.dart';
import 'package:futoboru/presentation/widgets/custom_app_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: <Widget>[
        const HomePage(),
        const MatchPage(),
        const StandingPage(),
        const SettingPage()
      ][currentIndex],
      bottomNavigationBar: customBottomNav(),
    );
  }

  Widget customBottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColorWhite,
        boxShadow: [
          boxShadow,
        ],
      ),
      child: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(IconlyLight.home),
            title: const Text("Home"),
            selectedColor: primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(IconlyLight.calendar),
            title: const Text("Match"),
            selectedColor: primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(IconlyLight.chart),
            title: const Text("Standing"),
            selectedColor: primaryColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(IconlyLight.setting),
            title: const Text("Setting"),
            selectedColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
